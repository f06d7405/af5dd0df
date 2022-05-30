open Core

let format_chapter ch_number ch_title ch_subtitle =
    let snippet = In_channel.read_all "./snippets/chapter.tex" in
    snippet |>
    Str.global_replace (Str.regexp "__NUMBER__") ch_number |>
    Str.global_replace (Str.regexp "__TITLE__") ch_title |>
    Str.global_replace (Str.regexp "__SUBTITLE__") ch_subtitle

let format_section se_number se_title =
    let snippet = In_channel.read_all "./snippets/section.tex" in
    snippet |>
    Str.global_replace (Str.regexp "__NUMBER__") se_number |>
    Str.global_replace (Str.regexp "__TITLE__") se_title
