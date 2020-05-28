# Classroom Hub

The goal is to provide students in countries or areas without
internet a way to still have access to an education.

As of now there are two major ideas for how we can deliver on content.

1. The first would be the idea of a classroom "hub", though this may
   be particularly difficult to deliver on without a consistent internet
   or network connection. This "hub" could be a shared kiosk that allowed
   users to login with pre-defined credentials, which would be encrypted
   on the hard drive.

2. The second would be the idea of "individual learning devices", where
   perhaps we could build our own single-focus personal computer using a
   cheap personal machine like a raspberry pi or something similar and attach
   a screen ([perhaps a touch screen like this](https://www.amazon.com/Raspberry-Pi-7-Touchscreen-Display/dp/B0153R2A9I)).

The "learning devices" concept might be better in the long run if we can
create a reliable way for students to have their answers checked by the machine.

---

## The "Content Upload" Process

Since new video content cannot be uploaded to a cloud storage provider
like [AWS S3](https://aws.amazon.com/s3/), we will need a way to allow an
instructor to upload video content and send it to consumers of the learning
device.

```mermaid
sequenceDiagram
  participant T as Video Instructor
  participant G as Instructor's Application
  participant C as Digital Course
  participant F as Flash Drive

  T -->> T: Record Class Content
  T -->> G: Upload recording, add annotations, etc.
  G -->> G: Validate recording size to not overload pi hard disk
      alt Recording is valid
          G->>T: Give teacher an error, or compress video
      else Recording is not valid
          G->>C: Add video to digital course
      end
  G -->> G: Validate recording size to not overload pi hard disk
      alt Recording is valid
          G->>T: Give teacher an error, or compress video
      else Recording is not valid
          G->>C: Add video to digital course
      end
  T -->> G: Click a "Upload" button
  G -->> C: Get All Course Values
  C -->> G: Values
  G -->> G: Do we need to encrypt the course or anything?
  G -->> F: Upload Course
```

## The "Delivery" Process

Assuming that our target consumers for of the content already have their
_learning devices_, the delivery of new educational content could be via
small, [snail mailed](https://whatis.techtarget.com/definition/snail-mail)
flash drives.

- When the user plugs in the flash drive, we could prompt them if they
  want to watch the course, see an overview, etc.
- When the user plugs in the flash drive we could even deliver system
  updates to their _learning systems_.

```mermaid
sequenceDiagram
  participant S as Student
  participant L as Learning System

  S -->> S: Receives flash drive via Mail
  S -->> L: Plug Flash Drive into learning system
  L -->> S: Give Course Overview UI
  S --> L: Watch instructional videos to unlock tests
  S -->> L: Take test defined by instructor to complete first course (or class)

```

## The "Learning" Process

- Todo

## The "Grading" Process

- Todo

## The Concerns

- How do students using this platform ask questions?
