---
title: "AMQP Intro with Go and RabbitMQ"
date: 2020-04-05T15:30:19+02:00
draft: true
tags: ["go","golang","rabbitmq","amqp"]
---

Intro
---

*Advanced Message Queuing Protocol*  ([AMQP](https://en.wikipedia.org/wiki/Advanced_Message_Queuing_Protocol)) plays a very important role in microservices oriented architectures.

RabbitMQ is one of the most famous message broker that uses AMQP 0.9.1 therefore I'm using this application for this short introduction.

AMQP relies on the concepts of  *Producers*, *Queues* and *Consumers*, *Exchange*, *Routes*. One other common concept in
 this scope is *Topics* but it's out of the intent of this intro.

Basic concepts
---

### *Producer and consumer*

You can think a producer as an application that can send messages and a consumer as an application that can receive them.

### *Exchange*

An exchange is the part of the message broker intended for receiving the message and deliver it to a queue using the pre defined routing keys.
There are various types of exchanges but I'll focus on the *Direct* one. This type of exchange look only for exact match between the message key and the routing key.

### *Routing key*

A routing key is a string used by an exchange to bind messages to a queue once the message is received.
You can think it as an address for the message.

### *Queue*

A queue is where a message is stored until it will be read by the consumer. A queue has a name and some attributes:
- *Durable* define if the queue will survive a broker restart.
- *Exclusive* define if the queue has to be used only by one connection and has to be deleted when that connection closes.
- *Auto-delete* define if the queue has to be deleted whet the last consumer connection closes.

### *Basic flow diagram*

{{< figure src="diagram.png" width="550px" >}}


AMQP in Go
---
One of the most mantained and updated libraries for working with 
AMQP is [streadway](https://github.com/streadway/amqp) once, you can start using it 
 just with a go get:
 ```shell script
$ go get github.com/streadway/amqp
``` 
---
