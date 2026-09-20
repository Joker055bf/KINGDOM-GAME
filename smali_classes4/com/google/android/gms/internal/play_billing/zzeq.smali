.class public final Lcom/google/android/gms/internal/play_billing/zzeq;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzeq;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzeq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb:Lcom/google/android/gms/internal/play_billing/zzeq;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzeq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/play_billing/zzeq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb:Lcom/google/android/gms/internal/play_billing/zzeq;

    return-object v0
.end method

.method public static zzc([B)Lcom/google/android/gms/internal/play_billing/zzeq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/play_billing/zzhb;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb:Lcom/google/android/gms/internal/play_billing/zzeq;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzt(Lcom/google/android/gms/internal/play_billing/zzgp;[B)Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzeq;

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzeq;->zze:I

    return v0
.end method

.method protected final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb:Lcom/google/android/gms/internal/play_billing/zzeq;

    return-object p1

    .line 4
    :cond_0
    throw p3

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzep;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzep;-><init>(Lcom/google/android/gms/internal/play_billing/zzet;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzeq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzeq;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzd"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb:Lcom/google/android/gms/internal/play_billing/zzeq;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzy(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Ljava/lang/String;

    return-object v0
.end method
