.class public final Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;
.super Ljava/lang/Object;
.source "CallbackPayload.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0008\u0010\u000f\u001a\u00020\u0003H\u0002J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0013J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;",
        "",
        "identifier",
        "",
        "value",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getIdentifier",
        "()Ljava/lang/String;",
        "getValue",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "generatePayloadJson",
        "hashCode",
        "",
        "sendMessageError",
        "",
        "sendMessageOk",
        "toString",
        "Companion",
        "line_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;

.field private static final KEY_LINE_SDK:Ljava/lang/String; = "LineSDK"

.field private static final NAME_API_ERROR:Ljava/lang/String; = "OnApiError"

.field private static final NAME_API_OK:Ljava/lang/String; = "OnApiOk"

.field private static final gson:Lcom/google/gson/Gson;


# instance fields
.field private final identifier:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->Companion:Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;

    .line 37
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->identifier:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getGson$cp()Lcom/google/gson/Gson;
    .locals 1

    .line 10
    sget-object v0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->identifier:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->value:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;

    move-result-object p0

    return-object p0
.end method

.method private final generatePayloadJson()Ljava/lang/String;
    .locals 2

    .line 34
    sget-object v0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gson.toJson(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;

    invoke-direct {v0, p1, p2}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;

    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->identifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->identifier:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->value:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final sendMessageError()V
    .locals 3

    .line 25
    sget-object v0, Lcom/linecorp/linesdk/unitywrapper/LineSdkJavaWrapper;->listener:Lcom/linecorp/linesdk/unitywrapper/LineCallbackListener;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->generatePayloadJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/linecorp/linesdk/unitywrapper/LineCallbackListener;->LineResultCallBack(ZLjava/lang/String;)V

    return-void
.end method

.method public final sendMessageOk()V
    .locals 3

    .line 15
    sget-object v0, Lcom/linecorp/linesdk/unitywrapper/LineSdkJavaWrapper;->listener:Lcom/linecorp/linesdk/unitywrapper/LineCallbackListener;

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->generatePayloadJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/linecorp/linesdk/unitywrapper/LineCallbackListener;->LineResultCallBack(ZLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallbackPayload(identifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
