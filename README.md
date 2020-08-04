# Boris Bike

This is a post course attempt at the boris bike challenge.

The goal is to take the course learnings and improve on the final solution.

## User story

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

## Domain Model

| Object          | Messages     |
| --------------- | ------------ |
| Person          |
| Bike            | working?     |
| Docking_station | release_bike |

## Domain Diagram

```
Bike <-- working? --> true/false
DockingStation <-- release_bike --> a Bike
```

## User Story

```
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked
```

## Domain Model

| Object          | Messages                 |
| --------------- | ------------------------ |
| Person          |                          |
| Bike            | working?                 |
| Docking_station | release_bike, dock(Bike) |

```
Bike < ---- .new ----- > a Bike
DockingStation <-- dock(Bike) --> a Bike
```

## User story

```
As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
```

## Program assumption

- There are no bikes in a newly created station.

## User story

```
As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.
```

## Program assumption

- The capacity of bike for each station is one.

## User story

```
As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.
```
