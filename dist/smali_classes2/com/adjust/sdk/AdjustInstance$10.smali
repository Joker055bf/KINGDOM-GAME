.class Lcom/adjust/sdk/AdjustInstance$10;
.super Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AdjustInstance;->getSdkVersion(Lcom/adjust/sdk/OnSdkVersionReadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adjust/sdk/scheduler/AsyncTaskExecutor<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/adjust/sdk/OnSdkVersionReadListener;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/OnSdkVersionReadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/AdjustInstance$10;->a:Lcom/adjust/sdk/OnSdkVersionReadListener;

    invoke-direct {p0}, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    invoke-static {}, Lcom/adjust/sdk/Util;->getSdkVersion()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance$10;->a:Lcom/adjust/sdk/OnSdkVersionReadListener;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/OnSdkVersionReadListener;->onSdkVersionRead(Ljava/lang/String;)V

    return-void
.end method
