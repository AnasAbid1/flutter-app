import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tts06c1/API/apifetchscreen.dart';
import 'package:tts06c1/Firebase/Authentication/register_screen.dart';
import 'package:tts06c1/firebase_options.dart';
import 'package:tts06c1/form_screen.dart';
import 'package:tts06c1/gridview_screen.dart';
import 'package:tts06c1/listview_screen.dart';
import 'package:tts06c1/login_screen.dart';
import 'package:tts06c1/stack_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme()
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey,
        // For Android Studio Built in Colors
        title: const Text("Custom Text", style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.w400,
            fontSize: 20),),
      ),
      drawer: Drawer(
        width: 260,
        backgroundColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 260,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
                    image: const NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM9PksZKAi-_dF6tWtsZhM5sdebLgb3EovfQ&usqp=CAU'))
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEBYTExMXFhAUExYWGRYWFhAWGRgXFhcZFxgXFxYZHikhGRsnHhYWIjIiJiosLy8vGSA1OjcuOSkuLywBCgoKDg0OHBAQGy4eISYuLjAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLC4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLv/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABQYDBAcCAQj/xABBEAACAQICBgYHBgUDBQEAAAAAAQIDEQQhBQYSMUFREyJhcYGxIzJykaHB0QdCUmKCshQ0ouHwM2OSFiRTc8IV/8QAGwEBAAIDAQEAAAAAAAAAAAAAAAIFAQMEBgf/xAA5EQACAQIDAwkGBQQDAAAAAAAAAQIDEQQhMQUSQSJRYXGBscHR8AYTMzSRoTJywuHxI2KCohRCUv/aAAwDAQACEQMRAD8A7iAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUrWP7Q8Nh26dP01VZPZaUIvk553fYk91nYo32mfaK6k54XC1NnDxbjUqxedV7nGLW6nwuvW9n1udYGpiKzth4d83ZJfqeS8CLZlK50XSOvmOrbpunHlSjsL/AJu8viQdfSdefr1py9qrJ+cjSw+p1epnWxD7oXfxf0N+lqFQ+9VrS/VBeUTW5w4m1UZHmhjq8c4VZJ/lqNeTJvR2ueOo2vUlOPKoukT75Pre5kW9QcPbKrWi+anB+cTFLUyvDOhi5LsqRun4rd7hvw57B05HT9A/aLRqtQxC6Kb++nem+/jDxuu0u0JppNO6aums00+KZ+bcRVxOH/m8PtU//PRzt2u3zSLnqZre8Pspz6XBTfDN078Yreu2Pz3zTNbjbI7EDHSqKUVKLTjJJpp3TTV00+KMhMiAAAAAAAAAAAAAAAAAAAAAAAAAAACgfbHrO8JgejpytXxLdOLWTjBL0kl22aj+u/Av5+eft2x3S6VjRTyo0KcLcpzbm/6ZU/cYZlFO0HoxVpbdT/STyX4rfIveElGEVGKSilZJWSXgUKti6lOSp08oxirfVs3sLpasluc+6Mn4XRocHLM6YzjDI6DQro24VCkYHWCDlszvCX5vny8SzYTEXNbTWptTUtCYhIzRZoU6pDaU1vo0nswvVqbur6qfK/F9iMpN6GJSSV2Wl23cGUrWLQTw+1icMrQWdWivVceM4Lg1xXLNcnrVNcKqV6lGrCP4rSivjFeZlwOsU6lSEb7UZy2eeXHfxSzNihKOaNTnGWTOifZJrEq1OWHbvsx6SlffsN2nD9Mmv+XYdGPz5qHP+E0tTp3tT/iHTXs14tQj75R8UfoM2x0OeSs7AAEjAAAAAAAAAAAAAAAAAAAAAAAABXdbdaqWCp3l1qsr7ML2yW+Unwj5++35z1g0j/FaSnXfrVGpO17XUdnK73WjFeBPfaXpidbGYiV8o1ZUYrlGnJwVuxtN/qZTNHQaqpPN2b9+XzNW83c6NxRsSuCwUsTXjThltyUb8lxfuTZL6XjgMPJ0FGpVqU+rOe20oyW+KS3tcbZJ5HrUyrGE1Uf3ZNPsurXfxKjpFThXqKXrKpJu/G7bv23vfxCIPn9alsw2Fo1aFpKWxd7MpX24KWSlCTSur2y3Zrfc9av4xwc6NR9ak2k+aT4dm5rsaIvV3F3jUjlsqi23yba2V3vP3EfRi60puTttO7tyySXkZklbMU273RZNYNKy2VTg3efFX3dnka+jdHUoRVWqpyinsKNO+3VnbacVk9mCVrytxS3shcPQ2K+w27cLt5X8s2iX1mcqdDCVEsoutnwU5SjJJ9tof0siksktCUpPNvUvurmI0fOMXPD9FGU+jc1UrXjNr1asZWtl+LmsrO5A666CWjMZCtR/0Ju0o8FdO1luWUZdzirZSsqhS07WqtwlJvbcFGEV60ltRgkuMvSNc3kuCOgfaxi0sNRpSalUhGlCT33nFXk/h/UbGlY1xbuyGxqisdRqXtFypTuucHJp/CJ23V/WCGIVnZVLXst0lxa+hwrTOFclQpttScIRbW9NLf7yR1H0vVpTak+vRn77Z/FeZpU91I3unv3XT4I/QAPMXdX5no6DlAAAAAAAAAAAAAAAAAAAAAAAAPzVr7o2VPH4mlJZ9NKrHtjVfSxtzXW2e+LKpRVqyfNNH6I+0fUj+PpxqUWoYykrRbyjUhe/RzfDNtp8G3zZwTSuEr0K3R16UqdWm81Jc+UllJZ702jTu2fWdKkpRvxVjZpVpUp7cc4tdaPzM+Lnhq9pSj1rW3tO3K8eBoOpcwuhtMjGXOSlB8Dcr4uEYdFSioxb4Le+be+TMWjqdqsY8us+97l7vMy4XCKOZ8wMvSyf5re4jKd0TpU7O7NvWjANKFaCz3NGTR+scJ0uirxUoPepR2k873a3p3zuu8mMTaVJX5kXX1epyldZCE7KzM1aTb3kbGjsfgsM+lpQSqrdJdJOSyt1XVk1De81mZcDg6uLrLEV4uFCDvCDveWd+O9XzcuNklluz6L0ZSp5qC2l95pN+97iZVcSqcxCNJ8SC0qnLGQztGnFzl5L4t+42dAYCUqrsrTr1VGK7HaKb8MzVo4hzxU9im6k5KMIxjFybafBLvR1XUfVWdF/xGISVZq0KaafRpqzbayc2ssskr5u+TdcrIzvKCcue9i6RVlbkegDqOIAAAAAAAAAAAAAAAAAAAAAAFU1w050a6Gm7VJLrSW+MXwXKT+C70a6tWNOO9I2UqUqs1GJp62a1uO1SoPNXU6i4c4wfPt93M4rrVjJS6r3N8efMvrpXRUta9HXi2lmVEcQ51VKfZ0F4sPGNJwhzZ9JVsPPK3Iw4rHuL2Y7+L+RpSqvg2mt5gbzLZQTZTTm0rEp/GV4racXsvi4u3vNT+MmpOSyvnYv+p+mqOylOLcWlFpSV1bsknHs3Z2WaLWsFoqp1pRgm/x4dt+Lpuxi8eNjKUlmrnJ6OmamW07pcEjelpzEW2o03sLJuza8Wtx1SjhdFU84wpNrlhpt+HSZENrvp2nUpKEVJU4vajBuC2mt14wSUYJ5/e4dw5K4Iy9963KrojWHbajUSi5ZJq9r9t9xMY3FbEHL3d5zyUjdhjJtXnNtLcm+PzMTprUzSqt8kuOp1aUZv8zu/odd0FpppKFR3jwk967+aOWanYZuO1bfmXuhCyKWVecaznFlrUoQ90oNcDoQIDQWkN1OT9l/L6E+XlGtGrHeX8FJVpunLdYABtNYAAAAAAAAAAAAAAAAABpaXxyo0J1X9yN0ucnlFeLaRyaeKlOTnN3lJtt82y+faPf/APPm1ujOm5d20l5tHLsPiL8So2i25qPBL13F1s2C925cb2+37k3SkfcTg1UjZmjSrm9Rrlfc72rHKtbtXamGqOoot0ZPNrPZfb2dpX73O/VKcKkXGUVKLVmnZpp8Dmmt2o0qN62GTnR3yp75RXNfij8V2rdaYXFppQnrwfOVWKwzznFda8vX1Klha8oO8XZk7hdYJLeitxqJntSLBpPUr7yjnFlr/wCoXbLIisdpCVR5sjFUDrJBRS0MOUpasz34vcSmrWiKmLrpRTVCD60uF+EVzZsaq6pVcZJTneGG58Z9keS7fd2dg0VoynRpqFOKjGKySOHFYpRvCGb7v3O7DUNJy07/ANj5onR0aUEktyJJRPiZ8lMrN1I7pNt3Pd7Ft0XiukpKX3tz71/ifiUmdUsmqUm6c3w27LvSV/NHVgJ2rbq4ru9fc5cZD+nvPg+8nwAXRVAAAAAAAAAAAAAAAAAAGvjMLGrTlTmtqE4uMlzUlZnC9YtC1cDX6Od5UpXdOfCcVz5SWV147mjtWk9L0qC9JLrWyhHOT8OC7XZHONddOV8XSdKFOnCm3dbUekndbmpPKL7lfN5nDjJUmt2Tz9alns9VYyulyXr5rp+xWKGJuSFGsVWnUnTezUjsv4PuZKYfFFTKnYurFkoVyQoVkymaT0z0EE1HbqTkoxje12+b5G9ofSlVz6OvTUJ2Ulsvai077n+l/wCMnHC1ZUnVUeStWcs6tNVFTvmyN1+1JjOE8Vho2qJOdSnHdNLOUorhLe2lv79/LNpn6NwNXa6rzTyficVWgleylubXDhkXGyYVsRGUY57tteZ99rFXjaahK+lyuXZfNQdTFXtXrr0V+pD8Vnvl+XLdx7t8FidFKmrtnZNVqShg6EVwo0/2oltONbDxSeW8RwdOM5NvOxLUKKikkrJGW5Aaf1h6GcKUIqVWa2km8rX2Vx4558LPee9DaadbbjOHR1qbSlG91mk1KL4ppr/Mip/49RUffbvJ0ud3vYue5fMmZzNapWMVWuaNSrKbtHN+XeccpnVGnc3sNTnXqKnBXb3vhGPGT7Domj8JGlSjTjuit73t7232t3ZTdXsXPDxa2YyUnd5Wb/Uvnct+B0nTqZJ2l+F7/DmWmz3SXHlPn7l67Ct2h7xuyXJXq79W6TeABalYAAAAAAAAAAAAAAACr6wayKm3TpWdRZSlvUXyXOXwXwMetmsHR3o036RrryX3U+C/M1x4Lt3U2DKzF4zde5T14vwXrLrLLCYNSSnU04LxfrPqM05OTcpNuTd2222+9n1RMTqhVCqLWx5xWAp1I2lFNMq+ktDzo9aneVPlxX1RbFUPk7NGyMrGU2jnmNaqbD4wmpLyJys109OpxjRsv1PN/D4mPWHRcY3qRyzV1wd3a/YzWxuJ2Zx9iJf0W3smpb/2v03OOai8ZF9HmW7RtfrLvXmUGpg47c8vvy5r7z5Fp0VibtZ8UQD3vvfmb/Zhcqr/AI/q8jTtRfh7SF0lhI23cOLbOsaFnbD0uynD9qOYaS3PuOg6MxH/AGtN/wC1H9qJe0uSpvr8DVs1XcuzxK3rPPbxtOrxp3j+lv6lkwSjGU6l+tPZT7orz+iKvpCd4zl2r9yLboTDqcFKWaT3cNyeZw3lLY7S4VLdlk/E6nGMcWrr/rftM9DDyqO7yhz4vu+pL4bDRirJWEDLFlHGmjfOo3loe1E+pBMXJOKNVyb0ZpfdGo+xS+v1J4o5MaH0lZqnN5bovl2PsLDC4tp7lR9T8/M4cRhl+KH0LAAC0OAAAAAAAAAAEPrJpVYei55dJLqwX5nxfYt/w4kwcq1v0p02JlZ+jpXhHwfWl4v4JHNi63uqd1q9PXrOx1YSh72pZ6LN+XrgRzqOTbbbk22297bzbZ9lUMMWfJvI8+ehsYlirs2I1CChUaqSXb5okadQlJWM2N5VT0qhpqZ92zBGxr6wz9C1zlBf1I1qmiVWp33SWSa37kfNOSvTS51Ied/kSmjH1fFl9GThsdvnqeC8jifzn+JXMJRr0ptSg3GKcnJWtZcf7HmRb9Kfy1Xthb3tIqUS29m4p0qlS2baX0V/1HJtKb3lHoIvSMcmS+jNITqYeFOEXeMVFye5WyuY6sE08jb1Yt0UuyrNeT+Zn2ipr3EZvhLvTIbNlaq1zruNjGYJQwlTjLZTb7pRbLDqxP0Xiv2r6EJpWXoKq/25P3K5J6rT9F4R8mVFDlbKrdE0/ruo7K/zUX/ayxqR6UjWUj0plLc3WNjbPM61jC5mjpGvaPil7yMpWMxhd2JinVuZLkTgKuRIxkZvdEXGzLZobG9JC0n14/FcH/nzJMpWAxPR1Iz4Lf2p7y5xd1dbmXODre8hZ6ru4FRiqW5K60fpnoAHYcwAAAAABE6z6R6DC1Jp2lbZj7Usk13Xv4HIKZdftOx2dKinwdSS7+rH/wC/eUumUmPqb1W3N/PkX2zqe7S3uf8AhGaJ6luPMT1LccJ3EDisqr7UvgblCWRqY9ekXd8zLQkbZEjdUg5GKLPrkQSMGlpZ3UVzqLykTOBfV8X5kHpHOcF+dv4f3JrA+qv84l3Xy2PT6aj/AFHDHPFy/KjNpydsLPtcF/UisRZPaxzth4r8VWK9yk/kV6LL/wBmo2wTfPJ90V4FbtB/1uxHubM2qssqy5Vb++K+hryeQ1Zn6SqvYfmjZ7QRvgm+ZrvMbPdq66mS+Pd6dRc6U/2s3tU5+iXsx+Zo4nO65wkvgzPqfL0S9hHncJns3ER/I/v+xY4n5in2lmUj1tGGLPVyjbN57cjR0i8l7SNps08duXtfI1yeZsprMy4SViUpTIbDyJOhInEhURuXLXq/idujZ74O3hvXwy8CoJkxq1X2auzwnG3jHNfC514SpuVl05eX3OLFQ3qT6My2AAvSnAAAABrY7EqnSnUe6nCU33RTfyF7A5LrfjOkx1V3yjPYXdDqu3ipPxI6mYFJt3bu27t8297NmCPM1JOUnJ8T1cIqEVFcMjNFHqW4+xPk9xBGWQmkF113HikzNjvXXcY4I2kjNFgRRkUSIInTNZ0+jna6U7Wvb1ll5FhwuUUuNiPxOBhUSU07KSkrNrNd3eyToo6amLlPDwoPSLb+vT2s540bVZVOdJfTU0daJ9Skuc5P3Rt8yDjIldan1qa/LJ/GJDxPcbAju4CHTd/7Mo8c712e3Ix6AnbEzXOmn7pf3PbRr6Hyxi7ac18U/kT21G+CqdCv9yODdsRHrLI43fgedTqkvSU2rdDLo273u0967MviSFCgZ8BgIU5TlFNSqy2pZt59i4HhKWLlTpVKS0mlfsf8l5Vp704y5rkimernlHtHGTPjNXHLqrv+TNxI1seup4og9SUNTFQZIUJEXRZI0WTRiZvRZmwlfYqRn+Fp/HM1qbMpJtrNGi3BnRAaOiK21Qg/y2ffHJ+RvHpYyUkpLjn9Tz8o7rafAAAkYBE60/yVf/1T8gCFT8L6jZS+JHrRxqibdMA80z1JsRPlTcAERZDYz1/D6nmABMkZomaIBFg9xNiiARMPQidav9Sl7Ev3IiUAfR9ifIUurxZ5zG/Hkema2iv52Hsz8gCe1/kqv5SOE+PDrL3RNqIB81PRSMkT2gDJrZkNTSHqPwAIMnHU1cOb1E+gkjMzdpmQAkznkW/Vv+XXtS8yWAPQYX4MOpdxR1/iy633gAG81H//2Q=='),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("John Doe", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,fontSize: 18),),
                      Text("johndoe@gmail.com", style: TextStyle(color: Colors.white),),
                    ],
                  )
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.person,color: Colors.white,),
              title: Text("Profile", style: TextStyle(color: Colors.white),),
              subtitle: Text("Change Your Profile Settings", style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.chevron_right,color: Colors.white),
            ),
            const ListTile(
              leading: Icon(Icons.settings,color: Colors.white,),
              title: Text("Settings", style: TextStyle(color: Colors.white),),
              subtitle: Text("Change Settings", style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.chevron_right,color: Colors.white),
            ),
            const ListTile(
              leading: Icon(Icons.settings,color: Colors.white,),
              title: Text("Settings", style: TextStyle(color: Colors.white),),
              subtitle: Text("Change Settings", style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.chevron_right,color: Colors.white),
            ),
            const ListTile(
              leading: Icon(Icons.logout,color: Colors.red,),
              title: Text("Logout", style: TextStyle(color: Colors.red),),
              subtitle: Text("Logout From Profile", style: TextStyle(color: Colors.red),),
              trailing: Icon(Icons.chevron_right,color: Colors.red),
            ),

            const Spacer(),

            const Center(child: Column(
              children: [
                Text("First App made by 06C1", style: TextStyle(color: Colors.white)),
                Text("Version 1.0.0", style: TextStyle(color: Colors.white)),
              ],
            ))
          ],
        ),
      ),
      body: Center(child: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Text("Making Drawer")),)
    );
  }
}








