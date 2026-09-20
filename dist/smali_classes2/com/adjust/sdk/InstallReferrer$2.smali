.class Lcom/adjust/sdk/InstallReferrer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/InstallReferrer;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/reflect/Method;

.field public final synthetic c:[Ljava/lang/Object;

.field public final synthetic d:Lcom/adjust/sdk/InstallReferrer;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/InstallReferrer;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/InstallReferrer$2;->d:Lcom/adjust/sdk/InstallReferrer;

    iput-object p2, p0, Lcom/adjust/sdk/InstallReferrer$2;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/adjust/sdk/InstallReferrer$2;->b:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/adjust/sdk/InstallReferrer$2;->c:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer$2;->d:Lcom/adjust/sdk/InstallReferrer;

    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer$2;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/adjust/sdk/InstallReferrer$2;->b:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/adjust/sdk/InstallReferrer$2;->c:[Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/InstallReferrer;->access$000(Lcom/adjust/sdk/InstallReferrer;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer$2;->d:Lcom/adjust/sdk/InstallReferrer;

    invoke-static {v1}, Lcom/adjust/sdk/InstallReferrer;->access$100(Lcom/adjust/sdk/InstallReferrer;)Lcom/adjust/sdk/InstallReferrerReadListener;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const-string v0, "invoke error (%s) thrown by (%s)"

    .line 5
    invoke-static {v0, v3}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adjust/sdk/InstallReferrerReadListener;->onFail(Ljava/lang/String;)V

    return-void
.end method
