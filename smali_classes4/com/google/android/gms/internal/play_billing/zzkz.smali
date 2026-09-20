.class public final Lcom/google/android/gms/internal/play_billing/zzkz;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzkz;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/play_billing/zzgu;

.field private zzf:I

.field private zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzkz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzkz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzkz;->zzb:Lcom/google/android/gms/internal/play_billing/zzkz;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzkz;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkz;->zzv()Lcom/google/android/gms/internal/play_billing/zzgu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkz;->zze:Lcom/google/android/gms/internal/play_billing/zzgu;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkz;->zzg:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/play_billing/zzkz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzkz;->zzb:Lcom/google/android/gms/internal/play_billing/zzkz;

    return-object v0
.end method


# virtual methods
.method protected final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzkz;->zzb:Lcom/google/android/gms/internal/play_billing/zzkz;

    return-object p1

    .line 5
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzkx;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzkx;-><init>(Lcom/google/android/gms/internal/play_billing/zzky;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzkz;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzkz;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zzd"

    aput-object v2, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzkz;->zzb:Lcom/google/android/gms/internal/play_billing/zzkz;

    const-string p3, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001a\u0002\u1004\u0000\u0003\u1008\u0001"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzkz;->zzy(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
