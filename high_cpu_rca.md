# High CPU Incident RCA

## Incident Summary
CPU usage exceeded 85% on production instance.

## Timeline
10:05 - Alert triggered
10:07 - Logged into server
10:10 - Identified runaway process
10:12 - Process terminated
10:15 - CPU normalized

## Impact
Performance degradation observed.

## Root Cause
Uncontrolled background process consuming CPU.

## Resolution
Process terminated using kill -9.

## Preventive Measures
Implemented CPU threshold alert and process monitoring.
