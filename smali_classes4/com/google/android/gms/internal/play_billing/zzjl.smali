.class public final Lcom/google/android/gms/internal/play_billing/zzjl;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzjl;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/play_billing/zzju;

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzjl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zze:I

    return-void
.end method

.method static synthetic zzG(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzkt;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzf:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zze:I

    return-void
.end method

.method static synthetic zzH(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzln;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzf:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zze:I

    return-void
.end method

.method static synthetic zzI(Lcom/google/android/gms/internal/play_billing/zzjl;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzjj;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzp()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjj;

    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/play_billing/zzjl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    return-object v0
.end method

.method public static zzc([B)Lcom/google/android/gms/internal/play_billing/zzjl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/play_billing/zzhb;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzt(Lcom/google/android/gms/internal/play_billing/zzgp;[B)Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzjl;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzjz;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjz;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzi:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzju;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzh:Lcom/google/android/gms/internal/play_billing/zzju;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzkn;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zze:I

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzjj;-><init>(Lcom/google/android/gms/internal/play_billing/zzjk;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzjl;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzf"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjm;->zza:Lcom/google/android/gms/internal/play_billing/zzgs;

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-class p3, Lcom/google/android/gms/internal/play_billing/zzkn;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzjy;->zza:Lcom/google/android/gms/internal/play_billing/zzgs;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lcom/google/android/gms/internal/play_billing/zzln;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lcom/google/android/gms/internal/play_billing/zzkt;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    const-string p3, "\u0004\u0006\u0001\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001\u0004<\u0000\u0005\u180c\u0002\u0006<\u0000\u0007<\u0000"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzjl;->zzy(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zze()Lcom/google/android/gms/internal/play_billing/zzkt;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zze:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkt;

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkt;->zzb()Lcom/google/android/gms/internal/play_billing/zzkt;

    move-result-object v0

    return-object v0
.end method
