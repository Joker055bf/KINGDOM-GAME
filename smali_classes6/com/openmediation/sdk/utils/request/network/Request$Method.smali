.class public final enum Lcom/openmediation/sdk/utils/request/network/Request$Method;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/request/network/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/openmediation/sdk/utils/request/network/Request$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openmediation/sdk/utils/request/network/Request$Method;

.field public static final enum GET:Lcom/openmediation/sdk/utils/request/network/Request$Method;

.field public static final enum POST:Lcom/openmediation/sdk/utils/request/network/Request$Method;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/openmediation/sdk/utils/request/network/Request$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/openmediation/sdk/utils/request/network/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/openmediation/sdk/utils/request/network/Request$Method;->GET:Lcom/openmediation/sdk/utils/request/network/Request$Method;

    new-instance v1, Lcom/openmediation/sdk/utils/request/network/Request$Method;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/openmediation/sdk/utils/request/network/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/openmediation/sdk/utils/request/network/Request$Method;->POST:Lcom/openmediation/sdk/utils/request/network/Request$Method;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/openmediation/sdk/utils/request/network/Request$Method;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/openmediation/sdk/utils/request/network/Request$Method;->$VALUES:[Lcom/openmediation/sdk/utils/request/network/Request$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/openmediation/sdk/utils/request/network/Request$Method;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openmediation/sdk/utils/request/network/Request$Method;
    .locals 1

    const-class v0, Lcom/openmediation/sdk/utils/request/network/Request$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/openmediation/sdk/utils/request/network/Request$Method;

    return-object p0
.end method

.method public static values()[Lcom/openmediation/sdk/utils/request/network/Request$Method;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/request/network/Request$Method;->$VALUES:[Lcom/openmediation/sdk/utils/request/network/Request$Method;

    invoke-virtual {v0}, [Lcom/openmediation/sdk/utils/request/network/Request$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openmediation/sdk/utils/request/network/Request$Method;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request$Method;->value:Ljava/lang/String;

    return-object v0
.end method
