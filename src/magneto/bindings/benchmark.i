/*
 * Copyright 2012-2014 by the MicroMagnum Team
 * Copyright 2014 by the magnum.fd Team
 *
 * This file is part of magnum.fd.
 * magnum.fd is based heavily on MicroMagnum.
 * (https://github.com/MicroMagnum/MicroMagnum)
 * 
 * magnum.fd is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * magnum.fd is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with magnum.fd. If not, see <http://www.gnu.org/licenses/>.
 */

%{
#include "Benchmark.h"

static void getBenchmarkRecord(const std::string &id, std::string *desc, int *num_benchmarks, double *total_time, double *avg_time)
{
        Benchmark::Record &rec = Benchmark::inst().getRecord(id);
        *num_benchmarks = rec.num_benchmarks;
        *total_time = rec.total_time;
        *avg_time = rec.total_time / rec.num_benchmarks;
        *desc = rec.desc;
}

static void resetBenchmark()
{
        Benchmark::inst().reset();
}

%}

void getBenchmarkRecord(const std::string &id, std::string *OUTPUT, int *OUTPUT, double *OUTPUT, double *OUTPUT);
void resetBenchmark();
