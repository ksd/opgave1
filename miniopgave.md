### Miniopgave

Lav en app, der viser en to-do liste.

Appen skal have 

* en model klasse som implementerer `Identifiable` protokollen
* en viewmodel med en `private(set)` array af to-do modeller
* et view til listen, hvor en opret knap i øverste højre hjørne
* en opret side, hvor du i et TextField kan oprette en to-do model instans som via viewmodellen tilføjes arrayet af to-do
* en detaljeside der viser to-do teksten som vises ved klik på den enkelte to-do i listen. Der skal anvendes `Navigation View`

Lav appen med noget demo-data som jeg viste sidst. i.e. 

```swift
struct ToDo: Identifiable {
  var id = UUID()
  ...
}
extension ToDo {
  static let demoData = [
    ToDO(...),
    ToDo(...),
    ...
  ]
}
```

