.class Lcom/game/sdk/comon/utils/DialogUtils$3;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/utils/DialogUtils;->showRetryDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/utils/DialogUtils$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 54
    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 p1, 0x0

    .line 55
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
