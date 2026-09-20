.class public final Lcom/chartboost/sdk/impl/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0015\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/z1;",
        "",
        "",
        "dspCode",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "setDspCode",
        "(Ljava/lang/String;)V",
        "",
        "dspCreatives",
        "[I",
        "b",
        "()[I",
        "setDspCreatives",
        "([I)V",
        "<init>",
        "()V",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/chartboost/sdk/impl/z1;

.field public static b:Ljava/lang/String;

.field public static c:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chartboost/sdk/impl/z1;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/z1;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/z1;->a:Lcom/chartboost/sdk/impl/z1;

    const-string v0, ""

    .line 1
    sput-object v0, Lcom/chartboost/sdk/impl/z1;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/impl/z1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/impl/z1;->c:[I

    return-object v0
.end method
