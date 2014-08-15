using System.Collections.Generic;
using System.Linq;
using GIS.Dto;
using GIS.Models;
using GIS.Domain.Model;

namespace GIS.Repositories
{
    public class ConsumerRepository
    {
        private readonly FanicaCGEntities _gisDb;
        public ConsumerRepository()
        {
            _gisDb = new FanicaCGEntities();
        }

        public List<ConsumerDto> GetConsumers()
        {
            var query = _gisDb.Consumers.Where(x => x.Active);

            return query.Select(z => new ConsumerDto
            {
                ConsumerType = z.MapElementTypes.TypeName,
                ConsumerName = z.Name,
                Image = z.Image,
                TypeImage = z.MapElementTypes.TypeImage,
                Longitude = z.Longitude,
                Latitude = z.Latitude,
                InfoLinks = z.MapElementTypes.MapElementsToMapElementLinks.Select(x => new InfoLink
                {
                    Title = x.MapElementLinks.Title,
                    ReferenceIndex = x.MapElementLinks.ReferenceIndex
                })
            }).ToList();
        }


        public List<ElectricLineDto> GetElectricLines()
        {
            var query = _gisDb.ElectricLines;

            return query.Select(z => new ElectricLineDto
                            {
                                ConsumerName = z.Name,
                                Capacity = (int)z.Capacity,
                                Locations = z.GPSCoordinates.Select(l => new LocationDto
                                {
                                    Longitude = l.Longitude,
                                    Latitude = l.Latitude,
                                }),
                            }).ToList();
        }

        public IList<ConsumerTypeDto> GetConsumerTypes()
        {
            return _gisDb.MapElementTypes.Select(x => new ConsumerTypeDto
            {
                ConsumerTypeName = x.TypeName,
                Image = x.TypeImage,
            }).ToList();
        }
    }
}