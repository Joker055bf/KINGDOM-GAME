.class public final Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbgj$zzag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzibr<",
        "Lcom/google/android/gms/internal/ads/zzbgj$zzaf;",
        "Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbgj$zzag;"
    }
.end annotation


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field public static final zzd:I = 0x4

.field public static final zze:I = 0x5

.field public static final zzf:I = 0x6

.field public static final zzg:I = 0x7

.field public static final zzh:I = 0x8

.field private static final zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

.field private static volatile zzw:Lcom/google/android/gms/internal/ads/zzidk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzidk<",
            "Lcom/google/android/gms/internal/ads/zzbgj$zzaf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzicd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzicd<",
            "Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:Ljava/lang/String;

.field private zzo:Ljava/lang/String;

.field private zzp:J

.field private zzu:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzbM()Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzo:Ljava/lang/String;

    return-void
.end method

.method public static zzB()Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbn()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;

    return-object v0
.end method

.method public static zzC(Lcom/google/android/gms/internal/ads/zzbgj$zzaf;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbo(Lcom/google/android/gms/internal/ads/zzibr;)Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;

    return-object p0
.end method

.method public static zzD()Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object v0
.end method

.method public static zzH()Lcom/google/android/gms/internal/ads/zzidk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzidk<",
            "Lcom/google/android/gms/internal/ads/zzbgj$zzaf;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbd()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v0

    return-object v0
.end method

.method private zzaA()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzD()Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzo:Ljava/lang/String;

    return-void
.end method

.method private zzaB(Lcom/google/android/gms/internal/ads/zzian;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzian;->zzz()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzo:Ljava/lang/String;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    return-void
.end method

.method private zzaC(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzp:J

    return-void
.end method

.method private zzaD()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzp:J

    return-void
.end method

.method private zzaE(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzu:I

    return-void
.end method

.method private zzaF()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzu:I

    return-void
.end method

.method static synthetic zzai()Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object v0
.end method

.method private zzaj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzicd;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbN(Lcom/google/android/gms/internal/ads/zzicd;)Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    :cond_0
    return-void
.end method

.method private zzak(ILcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzicd;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private zzal(Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzicd;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private zzam(ILcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzicd;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private zzan(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaW(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private zzao()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzbM()Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    return-void
.end method

.method private zzap(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzicd;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private zzaq(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzk:I

    return-void
.end method

.method private zzar()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzk:I

    return-void
.end method

.method private zzas(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzl:I

    return-void
.end method

.method private zzat()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzl:I

    return-void
.end method

.method private zzau(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzm:J

    return-void
.end method

.method private zzav()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzm:J

    return-void
.end method

.method private zzaw(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzn:Ljava/lang/String;

    return-void
.end method

.method private zzax()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzD()Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzz()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzn:Ljava/lang/String;

    return-void
.end method

.method private zzay(Lcom/google/android/gms/internal/ads/zzian;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzian;->zzz()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzn:Ljava/lang/String;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    return-void
.end method

.method private zzaz(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzo:Ljava/lang/String;

    return-void
.end method

.method public static zzg(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbR(Lcom/google/android/gms/internal/ads/zzibr;Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object p0
.end method

.method public static zzh(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbQ(Lcom/google/android/gms/internal/ads/zzibr;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object p0
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbS(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object p0
.end method

.method public static zzj(Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbT(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object p0
.end method

.method public static zzk([B)Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbU(Lcom/google/android/gms/internal/ads/zzibr;[B)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object p0
.end method

.method public static zzl([BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbV(Lcom/google/android/gms/internal/ads/zzibr;[BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object p0
.end method

.method public static zzo(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbW(Lcom/google/android/gms/internal/ads/zzibr;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object p0
.end method

.method public static zzp(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbX(Lcom/google/android/gms/internal/ads/zzibr;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object p0
.end method

.method public static zzs(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzca(Lcom/google/android/gms/internal/ads/zzibr;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object p0
.end method

.method public static zzt(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzcb(Lcom/google/android/gms/internal/ads/zzibr;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object p0
.end method

.method public static zzw(Lcom/google/android/gms/internal/ads/zziaq;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbY(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zziaq;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object p0
.end method

.method public static zzx(Lcom/google/android/gms/internal/ads/zziaq;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbZ(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zziaq;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object p0
.end method


# virtual methods
.method public zzA()Lcom/google/android/gms/internal/ads/zzian;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzn:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzian;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0

    return-object v0
.end method

.method public zzE()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzo:Ljava/lang/String;

    return-object v0
.end method

.method public zzG()Lcom/google/android/gms/internal/ads/zzian;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzo:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzian;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzI(ILcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzak(ILcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;)V

    return-void
.end method

.method final synthetic zzJ(Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzal(Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;)V

    return-void
.end method

.method public zzK()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzL()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzp:J

    return-wide v0
.end method

.method final synthetic zzM(ILcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzam(ILcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;)V

    return-void
.end method

.method final synthetic zzN(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzan(Ljava/lang/Iterable;)V

    return-void
.end method

.method public zzO()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzP()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzu:I

    return v0
.end method

.method final synthetic zzQ()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzao()V

    return-void
.end method

.method final synthetic zzR(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzap(I)V

    return-void
.end method

.method final synthetic zzS(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaq(I)V

    return-void
.end method

.method final synthetic zzT()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzar()V

    return-void
.end method

.method final synthetic zzU(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzas(I)V

    return-void
.end method

.method final synthetic zzV()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzat()V

    return-void
.end method

.method final synthetic zzW(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzau(J)V

    return-void
.end method

.method final synthetic zzX()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzav()V

    return-void
.end method

.method final synthetic zzY(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaw(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzZ()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzax()V

    return-void
.end method

.method public zza()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    return-object v0
.end method

.method final synthetic zzaa(Lcom/google/android/gms/internal/ads/zzian;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzay(Lcom/google/android/gms/internal/ads/zzian;)V

    return-void
.end method

.method final synthetic zzab(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaz(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzac()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaA()V

    return-void
.end method

.method final synthetic zzad(Lcom/google/android/gms/internal/ads/zzian;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaB(Lcom/google/android/gms/internal/ads/zzian;)V

    return-void
.end method

.method final synthetic zzae(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaC(J)V

    return-void
.end method

.method final synthetic zzaf()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaD()V

    return-void
.end method

.method final synthetic zzag(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaE(I)V

    return-void
.end method

.method final synthetic zzah()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaF()V

    return-void
.end method

.method public zzb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzicd;->size()I

    move-result v0

    return v0
.end method

.method public zzc(I)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzicd;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    return-object p1
.end method

.method public zzd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzw:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzw:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzw:Lcom/google/android/gms/internal/ads/zzidk;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;

    .line 6
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;-><init>()V

    return-object p1

    :cond_6
    const-string p1, "zzi"

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "zzj"

    aput-object p1, v4, p2

    .line 2
    const-class p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    aput-object p1, v4, v3

    const-string p1, "zzk"

    aput-object p1, v4, v2

    const-string p1, "zzl"

    aput-object p1, v4, v1

    const-string p1, "zzm"

    aput-object p1, v4, v0

    const-string p1, "zzn"

    aput-object p1, v4, p3

    const/4 p1, 0x7

    const-string p2, "zzo"

    aput-object p2, v4, p1

    const/16 p1, 0x8

    const-string p2, "zzp"

    aput-object p2, v4, p1

    const/16 p1, 0x9

    const-string p2, "zzu"

    aput-object p2, v4, p1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    const-string p2, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u001b\u0002\u1004\u0000\u0003\u1004\u0001\u0004\u1002\u0002\u0005\u1008\u0003\u0006\u1008\u0004\u0007\u1002\u0005\u0008\u1004\u0006"

    .line 5
    invoke-static {p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public zze(I)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzicd;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzb;

    return-object p1
.end method

.method public zzm()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzk:I

    return v0
.end method

.method public zzq()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzl:I

    return v0
.end method

.method public zzu()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzv()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzm:J

    return-wide v0
.end method

.method public zzy()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzn:Ljava/lang/String;

    return-object v0
.end method
