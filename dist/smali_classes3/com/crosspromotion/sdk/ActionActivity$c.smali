.class Lcom/crosspromotion/sdk/ActionActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crosspromotion/sdk/ActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/crosspromotion/sdk/ActionActivity;


# direct methods
.method private constructor <init>(Lcom/crosspromotion/sdk/ActionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/ActionActivity$c;->a:Lcom/crosspromotion/sdk/ActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crosspromotion/sdk/ActionActivity;Lcom/crosspromotion/sdk/ActionActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/ActionActivity$c;-><init>(Lcom/crosspromotion/sdk/ActionActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/ActionActivity$c;->a:Lcom/crosspromotion/sdk/ActionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
