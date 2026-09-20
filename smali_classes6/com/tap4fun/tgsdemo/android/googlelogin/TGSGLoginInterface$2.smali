.class Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$2;
.super Ljava/lang/Object;
.source "TGSGLoginInterface.java"

# interfaces
.implements Landroidx/credentials/CredentialManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->googleLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/credentials/CredentialManagerCallback<",
        "Landroidx/credentials/GetCredentialResponse;",
        "Landroidx/credentials/exceptions/GetCredentialException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/credentials/exceptions/GetCredentialException;)V
    .locals 7

    .line 253
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/credentials/exceptions/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    instance-of v0, p1, Landroidx/credentials/exceptions/GetCredentialCancellationException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    move v2, v0

    .line 258
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$100()Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$100()Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    move-result-object v1

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {p1}, Landroidx/credentials/exceptions/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;->onLoginResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p1, Landroidx/credentials/exceptions/GetCredentialException;

    invoke-virtual {p0, p1}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$2;->onError(Landroidx/credentials/exceptions/GetCredentialException;)V

    return-void
.end method

.method public onResult(Landroidx/credentials/GetCredentialResponse;)V
    .locals 10

    const-string v0, "Received an invalid google id token response"

    .line 198
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialResponse;->getCredential()Landroidx/credentials/Credential;

    move-result-object p1

    .line 200
    instance-of v1, p1, Landroidx/credentials/CustomCredential;

    if-eqz v1, :cond_2

    const-string v1, "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL"

    .line 201
    invoke-virtual {p1}, Landroidx/credentials/Credential;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    :try_start_0
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onResult: GoogleIdTokenCredential"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    check-cast p1, Landroidx/credentials/CustomCredential;

    invoke-virtual {p1}, Landroidx/credentials/CustomCredential;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->createFrom(Landroid/os/Bundle;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;

    move-result-object p1

    const-string v1, "AUTH_BY_JWT"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 207
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getIdToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 208
    aget-object v2, v2, v3

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 209
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "sub"

    .line 210
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 213
    :try_start_2
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move-object v6, v1

    .line 216
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tokenId"

    .line 217
    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getIdToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "email"

    .line 218
    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "displayName"

    .line 219
    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "givenName"

    .line 220
    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getGivenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "familyName"

    .line 221
    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getFamilyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getProfilePictureUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "photoUrl"

    .line 223
    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getProfilePictureUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    :cond_0
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$100()Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 226
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$100()Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getIdToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v4 .. v9}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;->onLoginResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 230
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$100()Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 233
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$100()Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;->onLoginResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :cond_1
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onResult: CustomCredential"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$100()Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 240
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$100()Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, "Received an invalid google id token response"

    invoke-interface/range {v0 .. v5}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;->onLoginResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 244
    :cond_2
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onResult: Credential Not CustomCredential"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$100()Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 246
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->access$100()Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, "Received an invalid google id token response,not custom credential"

    invoke-interface/range {v0 .. v5}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;->onLoginResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p1, Landroidx/credentials/GetCredentialResponse;

    invoke-virtual {p0, p1}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$2;->onResult(Landroidx/credentials/GetCredentialResponse;)V

    return-void
.end method
