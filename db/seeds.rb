user = User.create(
  nickname: "test_user",
  email: "test@example.com",
  password: "password",
)

TrainingLog.create(
  user_id: user.id,
  training_menu: "プルアップ",
  step: "ステップ２",
  repetition: "１０回",
  set: "２セット",
  memo: "最後はベイビーレップになってしまった。次回同じ回数でやり直す。",
)