.class public final Lcom/google/android/gms/internal/play_billing/zzkd;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzkd;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/play_billing/zzgt;

.field private zzh:Lcom/google/android/gms/internal/play_billing/zzgu;

.field private zzi:Lcom/google/android/gms/internal/play_billing/zzju;

.field private zzj:Z

.field private zzk:Z

.field private zzl:Lcom/google/android/gms/internal/play_billing/zzld;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzkd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb:Lcom/google/android/gms/internal/play_billing/zzkd;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzkd;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zze:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzu()Lcom/google/android/gms/internal/play_billing/zzgt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzg:Lcom/google/android/gms/internal/play_billing/zzgt;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzv()Lcom/google/android/gms/internal/play_billing/zzgu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzh:Lcom/google/android/gms/internal/play_billing/zzgu;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzka;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb:Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzp()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzka;

    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/play_billing/zzkd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb:Lcom/google/android/gms/internal/play_billing/zzkd;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/play_billing/zzkd;Lcom/google/android/gms/internal/play_billing/zzjz;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzg:Lcom/google/android/gms/internal/play_billing/zzgt;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgt;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgt;->size()I

    move-result v1

    add-int/2addr v1, v1

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgt;->zzg(I)Lcom/google/android/gms/internal/play_billing/zzgt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzg:Lcom/google/android/gms/internal/play_billing/zzgt;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzg:Lcom/google/android/gms/internal/play_billing/zzgt;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjz;->zza()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgt;->zzh(I)V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/play_billing/zzkd;Lcom/google/android/gms/internal/play_billing/zzju;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzi:Lcom/google/android/gms/internal/play_billing/zzju;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/play_billing/zzkd;Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    const-string p1, "ProxyBillingBroadcastReceiver"

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/play_billing/zzkd;Lcom/google/android/gms/internal/play_billing/zzld;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzl:Lcom/google/android/gms/internal/play_billing/zzld;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/play_billing/zzkd;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    return-void
.end method


# virtual methods
.method protected final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb:Lcom/google/android/gms/internal/play_billing/zzkd;

    return-object p1

    .line 5
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzka;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzka;-><init>(Lcom/google/android/gms/internal/play_billing/zzkc;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzkd;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzkd;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzd"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzkb;->zza:Lcom/google/android/gms/internal/play_billing/zzgs;

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjy;->zza:Lcom/google/android/gms/internal/play_billing/zzgs;

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/google/android/gms/internal/play_billing/zzkz;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzl"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb:Lcom/google/android/gms/internal/play_billing/zzkd;

    const-string p3, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u180c\u0001\u0003\u082c\u0004\u001b\u0005\u1009\u0002\u0006\u1007\u0003\u0007\u1007\u0004\u0008\u1009\u0005"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzy(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
