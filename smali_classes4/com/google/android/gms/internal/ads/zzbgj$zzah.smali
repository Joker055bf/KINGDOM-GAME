.class public final Lcom/google/android/gms/internal/ads/zzbgj$zzah;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbgj$zzak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzibr<",
        "Lcom/google/android/gms/internal/ads/zzbgj$zzah;",
        "Lcom/google/android/gms/internal/ads/zzbgj$zzah$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbgj$zzak;"
    }
.end annotation


# static fields
.field private static final zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

.field private static volatile zzC:Lcom/google/android/gms/internal/ads/zzidk; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzidk<",
            "Lcom/google/android/gms/internal/ads/zzbgj$zzah;",
            ">;"
        }
    .end annotation
.end field

.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field public static final zzd:I = 0x4

.field public static final zze:I = 0x5

.field public static final zzf:I = 0x6

.field public static final zzg:I = 0x7

.field public static final zzh:I = 0x8

.field public static final zzi:I = 0x9

.field public static final zzj:I = 0xa

.field public static final zzk:I = 0xb


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzbgj$zzai;

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzu:I

.field private zzv:I

.field private zzw:I

.field private zzx:I

.field private zzy:I

.field private zzz:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzm:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzn:I

    return-void
.end method

.method public static zzA()Lcom/google/android/gms/internal/ads/zzbgj$zzah$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbn()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah$zza;

    return-object v0
.end method

.method public static zzB(Lcom/google/android/gms/internal/ads/zzbgj$zzah;)Lcom/google/android/gms/internal/ads/zzbgj$zzah$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbo(Lcom/google/android/gms/internal/ads/zzibr;)Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah$zza;

    return-object p0
.end method

.method public static zzE()Lcom/google/android/gms/internal/ads/zzbgj$zzah;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object v0
.end method

.method public static zzF()Lcom/google/android/gms/internal/ads/zzidk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzidk<",
            "Lcom/google/android/gms/internal/ads/zzbgj$zzah;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbd()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v0

    return-object v0
.end method

.method private zzaA(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzy:I

    return-void
.end method

.method private zzaB()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzy:I

    return-void
.end method

.method private zzaC(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzz:I

    return-void
.end method

.method private zzaD()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzz:I

    return-void
.end method

.method private zzaE(Lcom/google/android/gms/internal/ads/zzbgj$zzai;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzA:Lcom/google/android/gms/internal/ads/zzbgj$zzai;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    return-void
.end method

.method private zzaF(Lcom/google/android/gms/internal/ads/zzbgj$zzai;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzA:Lcom/google/android/gms/internal/ads/zzbgj$zzai;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzai;->zzs()Lcom/google/android/gms/internal/ads/zzbgj$zzai;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzai;->zzr(Lcom/google/android/gms/internal/ads/zzbgj$zzai;)Lcom/google/android/gms/internal/ads/zzbgj$zzai$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbo(Lcom/google/android/gms/internal/ads/zzibr;)Lcom/google/android/gms/internal/ads/zzibl;

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj$zzai$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbl()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj$zzai;

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzA:Lcom/google/android/gms/internal/ads/zzbgj$zzai;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    return-void
.end method

.method private zzaG()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzA:Lcom/google/android/gms/internal/ads/zzbgj$zzai;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    return-void
.end method

.method static synthetic zzaj()Lcom/google/android/gms/internal/ads/zzbgj$zzah;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object v0
.end method

.method private zzak(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzm:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    return-void
.end method

.method private zzal()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzm:I

    return-void
.end method

.method private zzam(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzn:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    return-void
.end method

.method private zzan()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzn:I

    return-void
.end method

.method private zzao(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzo:I

    return-void
.end method

.method private zzap()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzo:I

    return-void
.end method

.method private zzaq(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzp:I

    return-void
.end method

.method private zzar()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzp:I

    return-void
.end method

.method private zzas(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzu:I

    return-void
.end method

.method private zzat()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzu:I

    return-void
.end method

.method private zzau(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzv:I

    return-void
.end method

.method private zzav()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzv:I

    return-void
.end method

.method private zzaw(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzw:I

    return-void
.end method

.method private zzax()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzw:I

    return-void
.end method

.method private zzay(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzx:I

    return-void
.end method

.method private zzaz()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzx:I

    return-void
.end method

.method public static zzc(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzbgj$zzah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbR(Lcom/google/android/gms/internal/ads/zzibr;Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object p0
.end method

.method public static zzd(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbQ(Lcom/google/android/gms/internal/ads/zzibr;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object p0
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzbgj$zzah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbS(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object p0
.end method

.method public static zzh(Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbT(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object p0
.end method

.method public static zzk([B)Lcom/google/android/gms/internal/ads/zzbgj$zzah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbU(Lcom/google/android/gms/internal/ads/zzibr;[B)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object p0
.end method

.method public static zzl([BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbV(Lcom/google/android/gms/internal/ads/zzibr;[BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object p0
.end method

.method public static zzo(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbgj$zzah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbW(Lcom/google/android/gms/internal/ads/zzibr;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object p0
.end method

.method public static zzp(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbX(Lcom/google/android/gms/internal/ads/zzibr;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object p0
.end method

.method public static zzs(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbgj$zzah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzca(Lcom/google/android/gms/internal/ads/zzibr;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object p0
.end method

.method public static zzt(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzcb(Lcom/google/android/gms/internal/ads/zzibr;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object p0
.end method

.method public static zzw(Lcom/google/android/gms/internal/ads/zziaq;)Lcom/google/android/gms/internal/ads/zzbgj$zzah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbY(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zziaq;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object p0
.end method

.method public static zzx(Lcom/google/android/gms/internal/ads/zziaq;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbZ(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zziaq;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object p0
.end method


# virtual methods
.method public zzC()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzD()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzx:I

    return v0
.end method

.method public zzG()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzy:I

    return v0
.end method

.method final synthetic zzI(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzak(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V

    return-void
.end method

.method final synthetic zzJ()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzal()V

    return-void
.end method

.method public zzK()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzL()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzz:I

    return v0
.end method

.method final synthetic zzM(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzam(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V

    return-void
.end method

.method final synthetic zzN()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzan()V

    return-void
.end method

.method public zzO()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzP()Lcom/google/android/gms/internal/ads/zzbgj$zzai;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzA:Lcom/google/android/gms/internal/ads/zzbgj$zzai;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzai;->zzs()Lcom/google/android/gms/internal/ads/zzbgj$zzai;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method final synthetic zzQ(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzao(I)V

    return-void
.end method

.method final synthetic zzR()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzap()V

    return-void
.end method

.method final synthetic zzS(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzaq(I)V

    return-void
.end method

.method final synthetic zzT()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzar()V

    return-void
.end method

.method final synthetic zzU(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzas(I)V

    return-void
.end method

.method final synthetic zzV()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzat()V

    return-void
.end method

.method final synthetic zzW(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzau(I)V

    return-void
.end method

.method final synthetic zzX()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzav()V

    return-void
.end method

.method final synthetic zzY(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzaw(I)V

    return-void
.end method

.method final synthetic zzZ()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzax()V

    return-void
.end method

.method public zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final synthetic zzaa(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzay(I)V

    return-void
.end method

.method final synthetic zzab()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzaz()V

    return-void
.end method

.method final synthetic zzac(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzaA(I)V

    return-void
.end method

.method final synthetic zzad()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzaB()V

    return-void
.end method

.method final synthetic zzae(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzaC(I)V

    return-void
.end method

.method final synthetic zzaf()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzaD()V

    return-void
.end method

.method final synthetic zzag(Lcom/google/android/gms/internal/ads/zzbgj$zzai;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzaE(Lcom/google/android/gms/internal/ads/zzbgj$zzai;)V

    return-void
.end method

.method final synthetic zzah(Lcom/google/android/gms/internal/ads/zzbgj$zzai;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzaF(Lcom/google/android/gms/internal/ads/zzbgj$zzai;)V

    return-void
.end method

.method final synthetic zzai()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzaG()V

    return-void
.end method

.method public zzb()Lcom/google/android/gms/internal/ads/zzbgj$zzq;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzm:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zzc(I)Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zzc:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    :cond_0
    return-object v0
.end method

.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibq;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x6

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    const/4 p2, 0x0

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    if-ne p1, p3, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzC:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzC:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzC:Lcom/google/android/gms/internal/ads/zzidk;

    .line 4
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 8
    :cond_2
    throw p2

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzah$zza;

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzah$zza;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;-><init>()V

    return-object p1

    :cond_6
    const-string p1, "zzl"

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "zzm"

    aput-object p1, v4, p2

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "zzn"

    aput-object p1, v4, v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "zzo"

    aput-object p1, v4, v0

    const-string p1, "zzp"

    aput-object p1, v4, p3

    const/4 p1, 0x7

    const-string p2, "zzu"

    aput-object p2, v4, p1

    const/16 p1, 0x8

    const-string p2, "zzv"

    aput-object p2, v4, p1

    const/16 p1, 0x9

    const-string p2, "zzw"

    aput-object p2, v4, p1

    const/16 p1, 0xa

    const-string p2, "zzx"

    aput-object p2, v4, p1

    const/16 p1, 0xb

    const-string p2, "zzy"

    aput-object p2, v4, p1

    const/16 p1, 0xc

    const-string p2, "zzz"

    aput-object p2, v4, p1

    const/16 p1, 0xd

    const-string p2, "zzA"

    aput-object p2, v4, p1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    const-string p2, "\u0004\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1004\u0004\u0006\u1004\u0005\u0007\u1004\u0006\u0008\u1004\u0007\t\u1004\u0008\n\u1004\t\u000b\u1009\n"

    .line 6
    invoke-static {p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public zze()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzf()Lcom/google/android/gms/internal/ads/zzbgj$zzq;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzn:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zzc(I)Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zzc:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    :cond_0
    return-object v0
.end method

.method public zzi()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzo:I

    return v0
.end method

.method public zzm()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzp:I

    return v0
.end method

.method public zzq()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzu:I

    return v0
.end method

.method public zzu()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzv()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzv:I

    return v0
.end method

.method public zzy()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzl:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzz()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzw:I

    return v0
.end method
