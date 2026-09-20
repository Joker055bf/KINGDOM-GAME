.class Lcom/mobgame/MobGameSDK$9$1;
.super Ljava/lang/Object;
.source "MobGameSDK.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/MobGameSDK$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobgame/MobGameSDK$9;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK$9;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$9$1;->this$1:Lcom/mobgame/MobGameSDK$9;

    iput-object p2, p0, Lcom/mobgame/MobGameSDK$9$1;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 939
    iget-object p1, p0, Lcom/mobgame/MobGameSDK$9$1;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
