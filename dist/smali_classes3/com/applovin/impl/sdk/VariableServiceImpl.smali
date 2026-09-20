.class public Lcom/applovin/impl/sdk/VariableServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinVariableService;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Lcom/applovin/sdk/AppLovinVariableService$OnVariablesUpdateListener;

.field private e:Landroid/os/Bundle;

.field private final f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->f:Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    .line 43
    sget-object v0, Lcom/applovin/impl/sdk/c/d;->m:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->deserialize(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/VariableServiceImpl;->updateVariables(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "Unable to retrieve variable value for "

    const-string v1, "Unable to retrieve variable value for name \""

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "AppLovinVariableService"

    const-string p3, "Unable to retrieve variable value for empty name"

    .line 135
    invoke-static {p1, p3}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->d()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "AppLovinSdk"

    const-string v3, "Attempted to retrieve variable before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener)."

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/y;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 144
    :try_start_0
    iget-object v3, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->e:Landroid/os/Bundle;

    if-nez v3, :cond_2

    const-string p3, "AppLovinVariableService"

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\". No variables returned by the server."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    monitor-exit v2

    return-object p2

    .line 150
    :cond_2
    const-class v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    iget-object p3, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->e:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v2

    return-object p1

    .line 154
    :cond_3
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 156
    iget-object p3, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->e:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    monitor-exit v2

    return-object p1

    .line 161
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 163
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/VariableServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->d:Lcom/applovin/sdk/AppLovinVariableService$OnVariablesUpdateListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->e:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 194
    new-instance v2, Lcom/applovin/impl/sdk/VariableServiceImpl$2;

    invoke-direct {v2, p0, v1}, Lcom/applovin/impl/sdk/VariableServiceImpl$2;-><init>(Lcom/applovin/impl/sdk/VariableServiceImpl;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-static {v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    .line 202
    monitor-exit v0

    return-void

    .line 189
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 202
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/VariableServiceImpl;)Lcom/applovin/sdk/AppLovinVariableService$OnVariablesUpdateListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->d:Lcom/applovin/sdk/AppLovinVariableService$OnVariablesUpdateListener;

    return-object p0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/VariableServiceImpl;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 115
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/VariableServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/VariableServiceImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 127
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/VariableServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public loadVariables()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->d()Z

    move-result v0

    const-string v1, "AppLovinVariableService"

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/applovin/impl/sdk/e/m;

    iget-object v1, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    new-instance v2, Lcom/applovin/impl/sdk/VariableServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/VariableServiceImpl$1;-><init>(Lcom/applovin/impl/sdk/VariableServiceImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/e/m;-><init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/e/m$a;)V

    .line 92
    iget-object v1, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->c:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    goto :goto_0

    :cond_0
    const-string v0, "Ignored explicit variables load. Service is already in the process of retrieving the latest set of variables."

    .line 96
    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "The AppLovin SDK is waiting for the initial variables to be returned upon completing initialization."

    .line 102
    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setOnVariablesUpdateListener(Lcom/applovin/sdk/AppLovinVariableService$OnVariablesUpdateListener;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->d:Lcom/applovin/sdk/AppLovinVariableService$OnVariablesUpdateListener;

    .line 60
    iget-object v0, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->f:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 63
    :try_start_0
    iget-object p1, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->e:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    const-string v1, "AppLovinVariableService"

    const-string v2, "Setting initial listener"

    invoke-virtual {p1, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/VariableServiceImpl;->a()V

    .line 68
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VariableService{variables="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->d:Lcom/applovin/sdk/AppLovinVariableService$OnVariablesUpdateListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateVariables(Lorg/json/JSONObject;)V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    const-string v1, "AppLovinVariableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updating variables: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->e:Landroid/os/Bundle;

    .line 177
    invoke-direct {p0}, Lcom/applovin/impl/sdk/VariableServiceImpl;->a()V

    .line 180
    iget-object v1, p0, Lcom/applovin/impl/sdk/VariableServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/d;->m:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    .line 181
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
