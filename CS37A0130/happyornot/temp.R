
# testing feedback distribution by plotting it
ggplot(data.frame(feedback.today), aes(x=Feedback)) +
  geom_bar(fill="lightgreen")

# exporting json if needed
write_json(feedback.final, "./data/happyornot_2024.json")