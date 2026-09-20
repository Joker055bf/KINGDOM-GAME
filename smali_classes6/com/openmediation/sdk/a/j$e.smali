.class Lcom/openmediation/sdk/a/j$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field private static final a:Lcom/openmediation/sdk/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/a/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/a/j;-><init>(Lcom/openmediation/sdk/a/j$a;)V

    sput-object v0, Lcom/openmediation/sdk/a/j$e;->a:Lcom/openmediation/sdk/a/j;

    return-void
.end method

.method static synthetic a()Lcom/openmediation/sdk/a/j;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/a/j$e;->a:Lcom/openmediation/sdk/a/j;

    return-object v0
.end method
