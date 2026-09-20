.class public final Lcom/google/android/gms/internal/play_billing/zzln;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzln;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Z

.field private zzg:J

.field private zzh:Z

.field private zzi:I

.field private zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzln;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzln;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzln;->zzb:Lcom/google/android/gms/internal/play_billing/zzln;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzln;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzll;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzln;->zzb:Lcom/google/android/gms/internal/play_billing/zzln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzp()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzll;

    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/play_billing/zzln;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzln;->zzb:Lcom/google/android/gms/internal/play_billing/zzln;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/play_billing/zzln;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzh:Z

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/play_billing/zzln;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzi:I

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/play_billing/zzln;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzg:J

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/play_billing/zzln;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzj:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/play_billing/zzln;Z)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzf:Z

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzln;->zzb:Lcom/google/android/gms/internal/play_billing/zzln;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzll;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzll;-><init>(Lcom/google/android/gms/internal/play_billing/zzlm;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzln;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzln;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

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

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzln;->zzb:Lcom/google/android/gms/internal/play_billing/zzln;

    const-string p3, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1007\u0001\u0003\u1002\u0002\u0004\u1007\u0003\u0005\u1004\u0004\u0006\u1004\u0005"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzln;->zzy(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
