.class final Lcom/crosspromotion/sdk/core/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crosspromotion/sdk/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/crosspromotion/sdk/core/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/crosspromotion/sdk/core/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/crosspromotion/sdk/core/b;-><init>(Lcom/crosspromotion/sdk/core/b$a;)V

    sput-object v0, Lcom/crosspromotion/sdk/core/b$b;->a:Lcom/crosspromotion/sdk/core/b;

    return-void
.end method

.method static synthetic a()Lcom/crosspromotion/sdk/core/b;
    .locals 1

    sget-object v0, Lcom/crosspromotion/sdk/core/b$b;->a:Lcom/crosspromotion/sdk/core/b;

    return-object v0
.end method
