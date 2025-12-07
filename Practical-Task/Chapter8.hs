type Address = String
type Value   = Int

generateTx :: Address -> Address -> Value -> String
generateTx fromAddr toAddr amount =
    "From: " ++ fromAddr ++ " -> To: " ++ toAddr ++ " | Value: " ++ show amount

main :: IO ()
main = do
    let sender = "addr1qsender123"
    let receiver = "addr1qreceiver456"
    let value = 100
    putStrLn (generateTx sender receiver value)