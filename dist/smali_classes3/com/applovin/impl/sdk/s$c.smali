.class public Lcom/applovin/impl/sdk/s$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/s;

.field private b:Lcom/applovin/impl/sdk/s$e;

.field private c:Lcom/applovin/impl/sdk/s$e;

.field private d:Lcom/applovin/impl/sdk/s$e;

.field private final e:Landroid/media/AudioManager;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/s;)V
    .locals 1

    .line 1037
    iput-object p1, p0, Lcom/applovin/impl/sdk/s$c;->a:Lcom/applovin/impl/sdk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/s;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/applovin/impl/sdk/s$c;->e:Landroid/media/AudioManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V
    .locals 0

    .line 1024
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/s$c;-><init>(Lcom/applovin/impl/sdk/s;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 7

    .line 1043
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$c;->d:Lcom/applovin/impl/sdk/s$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$c;->d:Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1048
    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/s$e;

    iget-object v2, p0, Lcom/applovin/impl/sdk/s$c;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v2}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->ad()Lcom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, p0, Lcom/applovin/impl/sdk/s$c;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v1}, Lcom/applovin/impl/sdk/s;->d(Lcom/applovin/impl/sdk/s;)I

    move-result v1

    int-to-long v4, v1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/s$c;->d:Lcom/applovin/impl/sdk/s$e;

    .line 1049
    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected b()Ljava/lang/Integer;
    .locals 9

    .line 1058
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$c;->b:Lcom/applovin/impl/sdk/s$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$c;->b:Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$c;->e:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$c;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->eg:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1071
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/s$c;->e:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 1072
    new-instance v8, Lcom/applovin/impl/sdk/s$e;

    iget-object v3, p0, Lcom/applovin/impl/sdk/s$c;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/applovin/impl/sdk/s$c;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->g(Lcom/applovin/impl/sdk/s;)I

    move-result v0

    int-to-long v5, v0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    iput-object v8, p0, Lcom/applovin/impl/sdk/s$c;->b:Lcom/applovin/impl/sdk/s$e;

    .line 1074
    invoke-static {v8}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1078
    iget-object v2, p0, Lcom/applovin/impl/sdk/s$c;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v2}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/sdk/s$c;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v2}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v2

    const-string v3, "DataProvider"

    const-string v4, "Unable to collect device volume"

    invoke-virtual {v2, v3, v4, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method protected c()Ljava/lang/String;
    .locals 8

    .line 1087
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$c;->c:Lcom/applovin/impl/sdk/s$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$c;->c:Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$c;->e:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 1094
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1096
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1098
    iget-object v1, p0, Lcom/applovin/impl/sdk/s$c;->e:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 1099
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 1101
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1107
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/s$c;->e:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "3,"

    .line 1109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/s$c;->e:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "7,"

    .line 1114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    :cond_4
    iget-object v1, p0, Lcom/applovin/impl/sdk/s$c;->e:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    .line 1119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1124
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_6

    .line 1126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1129
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1130
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1132
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$c;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/sdk/s$c;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    const-string v1, "DataProvider"

    const-string v2, "No sound outputs detected"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :cond_7
    new-instance v0, Lcom/applovin/impl/sdk/s$e;

    iget-object v3, p0, Lcom/applovin/impl/sdk/s$c;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v3}, Lcom/applovin/impl/sdk/s;->h(Lcom/applovin/impl/sdk/s;)I

    move-result v1

    int-to-long v5, v1

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/s$c;->c:Lcom/applovin/impl/sdk/s$e;

    .line 1137
    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
