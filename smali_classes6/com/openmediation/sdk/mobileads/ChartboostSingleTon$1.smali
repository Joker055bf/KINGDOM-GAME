.class Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$1;
.super Ljava/lang/Object;
.source "ChartboostSingleTon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->init(Landroid/content/Context;Ljava/lang/String;Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$1;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$1;->val$appKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$1;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$1;->val$appKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->access$200(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
