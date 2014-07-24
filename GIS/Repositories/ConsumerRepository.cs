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

        public List<SimpleConsumerDto> GetConsumersByType(string consumertType)
        {
            return _gisDb.Consumers.Where(x => x.Active && x.ConsumerType.ConsumerTypeName == consumertType)
                        .Select(z => new SimpleConsumerDto
                            {
                                ConsumerType = z.ConsumerType.ConsumerTypeName,
                                Locations = z.Locations.Select(l => new LocationDto
                                {
                                    Longitude = l.Longitude,
                                    Latitude = l.Latitude,
                                }),

                            })
                        .ToList();
        }

    }
}