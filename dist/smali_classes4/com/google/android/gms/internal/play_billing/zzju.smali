.class public final Lcom/google/android/gms/internal/play_billing/zzju;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzju;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzju;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzju;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzju;->zzb:Lcom/google/android/gms/internal/play_billing/zzju;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzju;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzG(Lcom/google/android/gms/internal/play_billing/zzju;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zze:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzjq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzju;->zzb:Lcom/google/android/gms/internal/play_billing/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzp()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjq;

    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/play_billing/zzju;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzju;->zzb:Lcom/google/android/gms/internal/play_billing/zzju;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/play_billing/zzju;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/play_billing/zzju;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/play_billing/zzju;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzj:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/play_billing/zzju;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzi:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/play_billing/zzju;Lcom/google/android/gms/internal/play_billing/zzjs;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjs;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzju;->zzd:I

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzju;->zzb:Lcom/google/android/gms/internal/play_billing/zzju;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzjq;-><init>(Lcom/google/android/gms/internal/play_billing/zzjt;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzju;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzju;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzd"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjr;->zza:Lcom/google/android/gms/internal/play_billing/zzgs;

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzju;->zzb:Lcom/google/android/gms/internal/play_billing/zzju;

    const-string p3, "\u0004\u0006\u0000\u0001\u0001\u0008\u0006\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0004\u180c\u0002\u0005\u1008\u0003\u0007\u1004\u0004\u0008\u1004\u0005"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzju;->zzy(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
