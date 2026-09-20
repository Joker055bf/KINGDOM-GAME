.class final Lru/ok/tracer/base/sessionuuuid/SessionUuidHolder;
.super Ljava/lang/Object;
.source "SessionUuidUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lru/ok/tracer/base/sessionuuuid/SessionUuidHolder;",
        "",
        "()V",
        "sessionUuid",
        "",
        "getSessionUuid",
        "()Ljava/lang/String;",
        "setSessionUuid",
        "(Ljava/lang/String;)V",
        "tracer-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lru/ok/tracer/base/sessionuuuid/SessionUuidHolder;

.field private static sessionUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/ok/tracer/base/sessionuuuid/SessionUuidHolder;

    invoke-direct {v0}, Lru/ok/tracer/base/sessionuuuid/SessionUuidHolder;-><init>()V

    sput-object v0, Lru/ok/tracer/base/sessionuuuid/SessionUuidHolder;->INSTANCE:Lru/ok/tracer/base/sessionuuuid/SessionUuidHolder;

    .line 12
    invoke-static {}, Lru/ok/tracer/base/sessionuuuid/SessionUuidUtils;->createSessionUuid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/ok/tracer/base/sessionuuuid/SessionUuidHolder;->sessionUuid:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSessionUuid()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lru/ok/tracer/base/sessionuuuid/SessionUuidHolder;->sessionUuid:Ljava/lang/String;

    return-object v0
.end method

.method public final setSessionUuid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sput-object p1, Lru/ok/tracer/base/sessionuuuid/SessionUuidHolder;->sessionUuid:Ljava/lang/String;

    return-void
.end method
