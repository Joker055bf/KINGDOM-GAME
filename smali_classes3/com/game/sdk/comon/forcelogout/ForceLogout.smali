.class public Lcom/game/sdk/comon/forcelogout/ForceLogout;
.super Ljava/lang/Object;
.source "ForceLogout.java"


# static fields
.field private static TAG:Ljava/lang/String; = "ForceLogout"

.field private static instance:Lcom/game/sdk/comon/forcelogout/ForceLogout;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDatabaseReference:Lcom/google/firebase/database/DatabaseReference;

.field private mFirebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

.field private mForceLogoutActivity:Lcom/game/sdk/ui/other/ForceLogoutActivity;

.field private mGameObj:Lcom/game/sdk/comon/forcelogout/GameObj;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/game/sdk/comon/forcelogout/ForceLogout;Lcom/game/sdk/comon/forcelogout/GameObj;)Lcom/game/sdk/comon/forcelogout/GameObj;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mGameObj:Lcom/game/sdk/comon/forcelogout/GameObj;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/game/sdk/comon/forcelogout/ForceLogout;
    .locals 1

    .line 41
    sget-object v0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->instance:Lcom/game/sdk/comon/forcelogout/ForceLogout;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/game/sdk/comon/forcelogout/ForceLogout;

    invoke-direct {v0}, Lcom/game/sdk/comon/forcelogout/ForceLogout;-><init>()V

    sput-object v0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->instance:Lcom/game/sdk/comon/forcelogout/ForceLogout;

    .line 43
    :cond_0
    sget-object v0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->instance:Lcom/game/sdk/comon/forcelogout/ForceLogout;

    return-object v0
.end method


# virtual methods
.method public disconnectFRB()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mDatabaseReference:Lcom/google/firebase/database/DatabaseReference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mFirebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->onDisconnect()Lcom/google/firebase/database/OnDisconnect;

    .line 83
    iget-object v0, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mFirebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->goOffline()V

    :cond_0
    return-void
.end method

.method public exitGame()V
    .locals 3

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_force_logout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 104
    invoke-virtual {p0}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->disconnectFRB()V

    .line 105
    iget-object v0, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 106
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 107
    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method forceOut()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mGameObj:Lcom/game/sdk/comon/forcelogout/GameObj;

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0}, Lcom/game/sdk/comon/forcelogout/GameObj;->getIsForce()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mForceLogoutActivity:Lcom/game/sdk/ui/other/ForceLogoutActivity;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/game/sdk/ui/other/ForceLogoutActivity;

    invoke-direct {v0}, Lcom/game/sdk/ui/other/ForceLogoutActivity;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mForceLogoutActivity:Lcom/game/sdk/ui/other/ForceLogoutActivity;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mForceLogoutActivity:Lcom/game/sdk/ui/other/ForceLogoutActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_force_logout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 95
    iget-object v0, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "cancel_force_logout"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 48
    iput-object p1, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mActivity:Landroid/app/Activity;

    .line 49
    :cond_0
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mFirebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

    return-void
.end method

.method public initFRB()V
    .locals 2

    .line 54
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mFirebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

    const-string v1, "ForceLogout"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mDatabaseReference:Lcom/google/firebase/database/DatabaseReference;

    .line 56
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/config/GameConfigs;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/comon/forcelogout/ForceLogout$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/forcelogout/ForceLogout$1;-><init>(Lcom/game/sdk/comon/forcelogout/ForceLogout;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_force_logout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/game/sdk/comon/sharePref/PrefManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->forceOut()V

    :cond_0
    return-void
.end method
