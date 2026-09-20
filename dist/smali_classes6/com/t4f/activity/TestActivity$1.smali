.class Lcom/t4f/activity/TestActivity$1;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/activity/TestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/activity/TestActivity;


# direct methods
.method constructor <init>(Lcom/t4f/activity/TestActivity;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/t4f/activity/TestActivity$1;->this$0:Lcom/t4f/activity/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/t4f/activity/TestActivity$1;->this$0:Lcom/t4f/activity/TestActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/t4f/activity/TestActivity;->startActivity(Landroid/content/Intent;)V

    .line 20
    iget-object v0, p0, Lcom/t4f/activity/TestActivity$1;->this$0:Lcom/t4f/activity/TestActivity;

    invoke-virtual {v0}, Lcom/t4f/activity/TestActivity;->finish()V

    return-void
.end method
