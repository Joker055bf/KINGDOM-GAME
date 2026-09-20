.class Lcom/crosspromotion/sdk/core/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crosspromotion/sdk/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/crosspromotion/sdk/core/a;


# direct methods
.method private constructor <init>(Lcom/crosspromotion/sdk/core/a;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/core/a$c;->a:Lcom/crosspromotion/sdk/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crosspromotion/sdk/core/a;Lcom/crosspromotion/sdk/core/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/core/a$c;-><init>(Lcom/crosspromotion/sdk/core/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0xd2

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v0

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a$c;->a:Lcom/crosspromotion/sdk/core/a;

    invoke-virtual {v1, v0}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void
.end method
