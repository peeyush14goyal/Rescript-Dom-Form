@val external document: {..} = "document"
@val external window: {..} = "window"

let textEditor = document["getElementById"]("textEditor")
let textView = document["getElementById"]("textView")

let updateView = (event) => {
  textView["innerText"] = event["target"]["value"]
}

textEditor["addEventListener"]("input", updateView)

let selectSmall = document["getElementById"]("selectSmall");

let selectRegular = document["getElementById"]("selectRegular");

let selectLarge = document["getElementById"]("selectLarge");

selectSmall["addEventListener"]("change", () => {
  textView["classList"]["add"]("text-sm") -> ignore
  textView["classList"]["remove"]("text-2xl", "text-6xl")
})

selectRegular["addEventListener"]("change", () => {
  textView["classList"]["add"]("text-2xl") -> ignore
  textView["classList"]["remove"]("text-sm", "text-6xl")
})

selectLarge["addEventListener"]("change", () => {
  textView["classList"]["add"]("text-6xl") -> ignore
  textView["classList"]["remove"]("text-2xl", "text-sm")
})
