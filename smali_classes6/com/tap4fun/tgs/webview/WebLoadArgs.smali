.class public Lcom/tap4fun/tgs/webview/WebLoadArgs;
.super Lcom/t4f/json/Json;
.source "WebLoadArgs.java"


# static fields
.field private static final LOAD_URL:Ljava/lang/String; = "loadUrl"

.field private static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/t4f/json/Json;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/t4f/json/Json;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLoadUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "loadUrl"

    .line 24
    invoke-virtual {p0, v0}, Lcom/tap4fun/tgs/webview/WebLoadArgs;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    const-string v0, "title"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/tap4fun/tgs/webview/WebLoadArgs;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLoadUrl(Ljava/lang/String;)Lcom/tap4fun/tgs/webview/WebLoadArgs;
    .locals 1

    const-string v0, "loadUrl"

    .line 20
    invoke-virtual {p0, p0, v0, p1}, Lcom/tap4fun/tgs/webview/WebLoadArgs;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/tap4fun/tgs/webview/WebLoadArgs;

    return-object p1
.end method

.method public setTitle(Ljava/lang/String;)Lcom/tap4fun/tgs/webview/WebLoadArgs;
    .locals 1

    const-string v0, "title"

    .line 28
    invoke-virtual {p0, p0, v0, p1}, Lcom/tap4fun/tgs/webview/WebLoadArgs;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/tap4fun/tgs/webview/WebLoadArgs;

    return-object p1
.end method
