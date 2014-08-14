using System.Collections.Generic;
using System.Linq;
using GIS.Dto;
using GIS.Models;

namespace GIS.Repositories
{
    public class ConsumerRepository
    {
        private readonly GisConnectionString _gisDb;
        public ConsumerRepository()
        {
            _gisDb = new GisConnectionString();
        }

        public List<SimpleConsumerDto> GetConsumersByType(List<string> consumertTypes)
        {
            var query = _gisDb.Consumers.Where(x => x.Active
                && consumertTypes.Any(z => z == x.ConsumerType.ConsumerTypeName));

            return query.Select(z => new SimpleConsumerDto
                            {
                                ConsumerType = z.ConsumerType.ConsumerTypeName,
                                ConsumerName = z.ConsumerName,
                                Image = z.Image,
                                Capacity = (int)z.Capacity,
                                TypeImage = z.ConsumerType.Image,
                                Locations = z.Locations.Select(l => new LocationDto
                                {
                                    Longitude = l.Longitude,
                                    Latitude = l.Latitude,
                                }),
                                InfoLinks = z.ConsumerType.ConsumerTypeInfoLinks.Select(x => new InfoLink
                                    {
                                        Title = x.ConsumerInfoLink.Title,
                                        ReferenceIndex = x.ConsumerInfoLink.ReferenceIndex
                                    })

                            })
                        .ToList();
        }

        public IList<ConsumerTypeDto> GetConsumerTypes()
        {
            return _gisDb.ConsumerTypes.Select(x => new ConsumerTypeDto
            {
                ConsumerTypeName = x.ConsumerTypeName,
                Image = x.Image,
                MapType = x.MapType
            }).ToList();
        }
    }
}