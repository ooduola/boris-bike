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
