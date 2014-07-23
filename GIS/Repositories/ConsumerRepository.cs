using System.Collections.Generic;
using System.Linq;
using GIS.Dto;
using GIS.Models;

namespace GIS.Repositories
{
    public class ConsumerRepository
    {
        private readonly GisDB _gisDb;
        public ConsumerRepository()
        {
            _gisDb = new GisDB();
        }

        public List<StationConsumerDto> GetStationConsumers()
        {
            return _gisDb.Consumers.Where(x => x.Active)
                        .Select(z => new StationConsumerDto
                            {
                                ConsumerType = z.ConsumerType.ConsumerTypeName,
                                Latitude = z.Locations.FirstOrDefault() != null ?  z.Locations.FirstOrDefault().Latitude : 0,
                                Longitude = z.Locations.FirstOrDefault() != null ? z.Locations.FirstOrDefault().Longitude : 0
                            })
                        .ToList();
        }

    }
}