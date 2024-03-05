import 'package:flutter/material.dart';
import 'package:tts06c1/reuseable_container.dart';

class SecondHome extends StatefulWidget {
  const SecondHome({super.key});

  @override
  State<SecondHome> createState() => _SecondHomeState();
}

class _SecondHomeState extends State<SecondHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


         const  MyProfileContainer(
            name: "John Doe",
            email: "johndoe@gmail.com",
            profilePic: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAMAAzAMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAABAUBAwYHAv/EADoQAAEDAwIDBQUHAwQDAAAAAAEAAgMEBRESIQYxQRMiUWFxFDKBkbEHI0JSocHRYpLwFYLC8SQzQ//EABoBAQADAQEBAAAAAAAAAAAAAAACAwQBBQb/xAAlEQACAgEEAQQDAQAAAAAAAAAAAQIRAwQSITEiBUFRYRMyQlL/2gAMAwEAAhEDEQA/APcUREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBEWmeeKBmqV4aPquNpdg3IqiS6PccQRgD8zlr9qqHc5MeioepgmWLEy7RUzamYb9oVIjrX/AIgCPJdjqINh42ixRaopmSe6fgtiuTT6INUZREXTgREQBERAEREAREQBERAEREAREQBYWVhxA3PJARq+rjo4DLJ6NA5krmpal08pmnfv08B6KDxBeRPVuIP3cfdjGfPcqppqie5TOZTbtbs+Q+63y8z9Oq8nUahylUTbiw0rZ0JuMEfI6vRfP+rjkyPK+KW2wR4dL947xdy+SnNmp4dmlo8mqhb39Fj2mlt18YjjyCkQ3KB5wX6T4FfBuUAPPKGtopdpGtI65Cnz8kXXwWMcnJ0bh8CrCmqBKMHZw/VUDIo9nUMwGPw5yFKp6kucQQWTM5t/dX4srgyqcE0XqZUCGqeCBJupzXAjIPNb4ZFPozyi4n0iIrCIREQBERAEREAREQBERAEREAVTxPXC32SqqM4Ibpb6nZWy437VS9vCr3sBIEzNXpn+VXl/Rk8auaPOqeSa83EU0Ty1g700n5W/yeQ+K7WB8NDTtiiaGMYMNaOQXIcLN9ktYl/+1S7tHHy5N/T6lZvN8dTuFNT9+qd47hg8T/C8Z98HqVfB0NxvbYGl0kzW7csqs/1Kuq3f+FSuLT+OTugqHZrSZ5W1FZJ2sjjuXn/MLs6SCKIBoZjG2MLqjZPxgjnGW3iCoBcZ6aLy0E/utrbLxAN21lK/yMZH7rsoQ3mApAHgrlhRW830cMJL1bT2lZRksHOSB2vHqOeF0VouUde1sjiC9g2dnmFcaA440hVVdaIHiR1O4wSOG+jkT44UZY3HlEHOM+GWzJYzs17Seu630FSWVXs7j3XDUwry6udd7RO81Pfp279vGTsM8yF1XDdzNdU0pccyNfj4YXYZWpornh8WzvURF65gCIiAIiIAiIgCIiAIiIAiIgCrr7Qw3K01dFUtBjljLe8cAHGx+asVx/H11NLC2ljcQS3W/HUdPoVXlkoxtlmKDnNJHnMD3UtKWu96maI/iNv2VLT01Q6eSoaQ57u8S/fdToal1RHKHtLS+QuB8Qri30w7F5DQe7leOlye1FbVyQo625UUbJHugYw+6JHBpcPIErq7FePb6fvhokYcEatwvDr7caqS/VskrnCVk5DP6Wg90DywAV3n2dVktVBHK/VrbK6IvOO+MZ/RbJ6dRjuRghm3z2tHq8Du6FIydBxzUGFwAG4Cl7GPf5qEeSUuCtqLnMx4ha+nie7l2kgGfTOF8h9zbUMjnfCzI6xk59CHLyCp4tnoeIrlLcaczSCoc1sTttLQcAZ6bL0T7LrjVXjhyaSrDnMhr3tpXO3+7IBxnrgkj4K6enW27KYZfKqOjrqKKqpnw1A1RzMdFJn8rhgqo4Es9woqqmZcItLo2Aue05a4gY5roaoiNmo8mnPioNmuczaySCcBr2HII3Bb0KzeKkrL6k4OjtByCyvmN2pjXeIyvpeseaEREAREQBERAEREAREQBERAF5/9oNO51zZqHcmp9LT5gnP1C9AVPxLZ23mh7IO7OeM6oZMZwfPyVWaG+FFuCeyaZ5BBT4n7JzSO6Qr+2RhmnZV9Yytt1xjguVHJC8u2kLcscPJ3I+nNTaWXS4tHQ4Xk00+T15TU+UabrwNYbzVe0zsmilPv9k7Acra3WG32yCGGkjwyH3R9T6lbIJ9lsnqOygc/lpaSrfyOqKVjW6yNFWe03CUg/dxnQ3HLbmfquioZWuj0v3xsuIsUuWtOc53K6qgl+8e3yBXISLs+PxogXv7PeH73X+21cL2zO990Uhbr8zj6robbb6W10MVHQwthgiGljG8gjJMBbO12Wje6MO0+Kn3VWMiJrxKBgNbpJU2rqGRR63nDVItdJLVPbNNEY4BuGvGC4+nQKpReSVE1NQiy9pQW00QOxDAD8ltQckXppUqPPfIREXTgREQBERAEREAREQBERAFgrKICuv1L7dZqymHvSROA9cbLyeN7nBsoaTkYcMcnDmCvaCM9F5Bxfb5bHfpOx1Mp6k9pGRy8x8D9Vi1cOpI16XJtdG6kqDkBoDn+DgtU931NfHUUbms3bnQcH5KHQVeiojdtkHO/VdZTto5QZTACH7lzXlpz542KwQqT8mbJSa5OCooJYJndhcGCEu2a9uS0eC6201cVPEQx8lVO7ckAn4ABXLaS3k5Ad/bGfq1SmGCNuiIP/u0gf24V/wCKP+iEs05cNFXQXptVVS0pgdG+Pc62+n8q0Di/doJJ2yq8wQxSOfEwNc7OSOZJ5k+a+zM5g7riPRUue10iLLmytEta53SJuD6lX6rrHSmnow54+8k7x8vJWK9XBHbDkw5HcjKIiuKwiIgCIiAIiIAiIgCIiAIiIAiIgCpeKrFHf7U+lcQyZveglP4HfweRV0sKMkpKmdTado8DfHUW6skpKyN0c0ZwWuV7argWEBrj57rrPtKtFJUWOa5OYRVUoaWSN/EC4DB8RuvKKWt7J/vfBeRmxOEqR6GPJvjbPSYa4OG7W59Fu9qyOgHkuPors0t32VjHcARtgqhzaLHRdvmGM5Vjw/bn1kwqZgRBGe6D+N38BV9jt77hVxiqBZDucDm7yXdxMbGxrGNDWtGAByC2aTBve+RlzZNvCPscllFjK9QyGUREAREQBERAEREAREQBERAEWCV8SzRwtL5XtY0cy44C42l2DYvk81TVXEtFDkRapiPyjb5qoq+Kap+RBBHGOhd3is89Vih2yuWSK7Owyo9XcaOjbqqqqGEHlreBlcBVXS4VWRLVygeDDpH6KudSh5JcMk8ydyVln6gv5RW869kbuM+LZbpHNb7exopDgOe8d6TBzt4DZcJPbpJjlrS13iCuxfbmPG7FpNtlb/6ngjwe3KyS1EpO2dxa3JjfCs563WKre5uupAb4YGV2tottHRgOklD3c9zk/oocEEzSA+GE48HYVpA14GdMbdum6h+Vs0S9RbXEUWcdxfBK11MMAdXj9l0VBeKapYO0kZHJ1Y52PkuRBOMdepwshpKsx6ueN/RmeolJ2zvWuaRkHIWVw8L5YTmKR7fQ4U+G8VseNTg8f1BbIeoxf7KiSyp9nVjkiooOIAcNmhIPi05VlTXCmqNo5W6vynYrXDUY59MsU0+iWixnwRXEjKIiAIiIAiIgCw7ksrTWVEdLSy1ExAjjaXOJ8AuN0Cp4hv0dqjDGgPqXjusJ2A8SuUkqJq1/a1MrpHHx5D0CpKuvlr66SrlJ1SOyAfwjoFYUs2QBleHn1Esku+DDkyOTokuDQOS0uc0L4nqWgkZ3UUzg9VmtFdksOBK+mkKI2RbGyJYslAhZACjtkWwPGEFm9mwxk/NbW4UdjwtgeF1HUSAtgwo7XhbA9SOm8YWcBaw5fYdsu0iR8v2Cw1wKSEaeahR1I7XTlRdI5Z0luuj4CGTkuj5Z6hdCx7XtDmnIPIhcSH6mjBV7w9V62upnHdu7fRejpM7vZI0Ypvpl4iIvTLwiIgCIiAwuR+0e4Gns8dIw96qkw4f0N3P66R8V1x5Lyvj+t9q4gdC33KZgYPU7n/PJZdZPZiZVmlUCkhO/JWVK/ScquhCnwbbrwfcwFZe6x1PcRF0e0FpX1TVIeAqnjCTTUwSDm12PgVst8uQD5Kxx8UzpfMkW1sigRP5Le1yrOExr1sa9RGuWxrkBLa9bWvUNpWxrkTO2TGvW0PURrlsDlNMkmSw9fRkwoocj34C7uOnzW1fZxuOQAOpVLQ1hml7TmCdlp4oqjFSFodvI7R/Ki2p+GMAUOasrb5Ozgl1MCm0FQaasilzsHd70PNU9FJkYU4bhTjKmpFqZ3zTkZWVCtE/b0ETs7gYPwU5fQwluSZuTtBERTOhERAa5niOJ8j/daCT8F4hU1BrK+epLiTNIX/r/ANL1bjSr9j4brHtOHPZ2bfVxx+68lpxyXleoT5UTJqZdImRDYKWzYfBR4gpJ2YfReYZjjuLzrd/vH1WaF+A30WviI66gA/nWacaQFo/hILouoX8lLY9VkDjgKYxyoYJjXLY1yjNK2NKiCU1y2ByitctocgJDXLa1yigrY1y6dslB6w9+y0glZOUbFnN8Xe7THp23/ErXbXclK4qj1ULX/kkaf2Vdbnqa5xkfc6yhk5eitWnLQqGhfuPRXULtTQo+xNcnUcLT5ZLCeh1BXwXIWCbsrkwZ7sgLT9V14Xt6Ke7FXwbsTuJlERbCw//Z",
            coverPhoto: "data:image/jpeg;base64,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",
          ),

          Container(
              margin: const EdgeInsets.only(left: 14,top: 30),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Follow on:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                  SizedBox(
                    width: 40,
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  )
                ],
              )),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(14)
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(14)
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(14)
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(14)
                ),
              ),
            ],
          ),

          Container(
              margin: const EdgeInsets.only(left: 14,top: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Bio:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                  SizedBox(
                    width: 40,
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  )
                ],
              )),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.grey.shade300
            ),
            child: const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.person),
                SizedBox(
                  width: 10,
                ),
                Text("kasdhfksdhf")
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.grey.shade300
            ),
            child: const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.email),
                SizedBox(
                  width: 10,
                ),
                Text("johndoe@gmail.com")
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.grey.shade300
            ),
            child: const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.web),
                SizedBox(
                  width: 10,
                ),
                Text("https://www.youtube.com")
              ],
            ),
          )

        ],
      ),
    );
  }
}

