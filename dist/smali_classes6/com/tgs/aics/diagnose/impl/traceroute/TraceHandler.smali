.class final enum Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;
.super Ljava/lang/Enum;
.source "TraceHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;

.field public static final enum INSTANCE:Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;


# instance fields
.field private destIps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCanceled:Z

.field private pingRepeatTimes:I


# direct methods
.method private static synthetic $values()[Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;

    const/4 v1, 0x0

    .line 22
    sget-object v2, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->INSTANCE:Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->INSTANCE:Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;

    .line 22
    invoke-static {}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->$values()[Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;

    move-result-object v0

    sput-object v0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->$VALUES:[Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->destIps:Ljava/util/Set;

    const/4 p1, 0x1

    .line 26
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->pingRepeatTimes:I

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->mCanceled:Z

    return-void
.end method

.method private checkTraceOver(Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;)V
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Check"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;->getPingInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;

    .line 94
    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->destIps:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->stopTrace()Z

    :cond_2
    return-void
.end method

.method private doTTL(ILjava/lang/String;I)Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 121
    invoke-direct {p0, p2}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->prepareInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    :cond_0
    new-instance v0, Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;-><init>()V

    .line 124
    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;->setTtl(I)V

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 127
    :goto_0
    iget v3, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->pingRepeatTimes:I

    if-ge v2, v3, :cond_1

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->ping(ILjava/lang/String;I)Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;->setPingInfoList(Ljava/util/List;)V

    return-object v0
.end method

.method private notifyTracerouteDiagnoseFinish(Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 31
    invoke-interface {p2, p1}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    :cond_0
    return-void
.end method

.method private parseDestIPFromPingResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\\b\\d+.\\d+.\\d+.\\d+\\b"

    .line 236
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 239
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private parseFirstLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "\n"

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 187
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseNodeIPFromPingResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "\n"

    .line 258
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const-string v1, ""

    if-gez v0, :cond_1

    return-object v1

    .line 262
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\b\\d+.\\d+.\\d+.\\d+\\b"

    .line 264
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 267
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private parseTimeFromPingResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\\b\\d+.\\d+\\s*ms\\b"

    .line 277
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private ping(ILjava/lang/String;I)Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;
    .locals 5

    .line 141
    new-instance v0, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;-><init>()V

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ping -c 1 -W "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gtz p3, :cond_0

    const/4 p3, 0x5

    :cond_0
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " -t %d "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 158
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->ping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->updateDestIPs(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->parseNodeIPFromPingResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 162
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->parseFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->setFirstLine(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p2}, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->setIp(Ljava/lang/String;)V

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/4 p3, 0x3

    if-ge v2, p3, :cond_3

    const-string p3, "*"

    if-eqz p2, :cond_1

    .line 167
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ping -c 1 -W 10 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->ping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->parseTimeFromPingResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p3

    .line 168
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    move-object p3, v1

    :cond_2
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->setTime(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->loadGeoByIP()V

    return-object v0
.end method

.method private ping(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "Diagnose traceroute command error. "

    .line 192
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 197
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    .line 198
    new-array v2, v2, [B

    .line 199
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " error="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 203
    :cond_0
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Traceroute ping: sbResult == null"

    .line 214
    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 216
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 218
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method private prepareInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ping -c 1 -W 1 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->ping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "PING"

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->parseDestIPFromPingResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private updateDestIPs(Ljava/lang/String;)V
    .locals 1

    .line 177
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->parseDestIPFromPingResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->destIps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;
    .locals 1

    .line 22
    const-class v0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;

    return-object p0
.end method

.method public static values()[Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;
    .locals 1

    .line 22
    sget-object v0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->$VALUES:[Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;

    invoke-virtual {v0}, [Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;

    return-object v0
.end method


# virtual methods
.method synthetic lambda$startTrace$0$com-tgs-aics-diagnose-impl-traceroute-TraceHandler(ILjava/lang/String;ILcom/tgs/aics/diagnose/Result;Ljava/lang/String;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 47
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v8, p1

    :cond_0
    :goto_0
    if-ge v7, v8, :cond_5

    add-int/lit8 v7, v7, 0x1

    move/from16 v9, p3

    .line 50
    invoke-direct {p0, v7, v1, v9}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->doTTL(ILjava/lang/String;I)Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;

    move-result-object v10

    if-nez v10, :cond_1

    .line 52
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  ***"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 54
    :cond_1
    iget-boolean v11, v0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->mCanceled:Z

    const-string v12, "  * * *"

    if-eqz v11, :cond_2

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Canceled traceroute."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;->getTtl()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_2

    .line 59
    :cond_2
    invoke-virtual {v10}, Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;->getPingInfoList()Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_3

    .line 61
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;->getTtl()I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 64
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;

    .line 65
    invoke-virtual {v12}, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->getIp()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 66
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v13, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto/16 :goto_0

    .line 70
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;->getTtl()I

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, "  "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->getIp()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->getTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "\n"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 72
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "\u3010"

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "\u3011:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    move-object v6, v13

    goto :goto_1

    :cond_5
    :goto_2
    const-string v1, "Succeed."

    .line 75
    invoke-virtual {v2, v1}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/tgs/aics/diagnose/Result;->setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p5

    invoke-virtual {v1, v4, v3}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-object/from16 v1, p6

    .line 77
    invoke-direct {p0, v2, v1}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->notifyTracerouteDiagnoseFinish(Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    return-void
.end method

.method public startTrace(Ljava/lang/String;Ljava/lang/String;IILcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 10

    move-object v8, p0

    move-object v3, p2

    .line 36
    new-instance v0, Lcom/tgs/aics/diagnose/Result;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/Result;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    if-eqz v3, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Lcom/tgs/aics/diagnose/Result;->setSource(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/tgs/aics/diagnose/Result;->setStartTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v5

    if-eqz v3, :cond_3

    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_2

    .line 42
    :cond_1
    iput-boolean v1, v8, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->mCanceled:Z

    if-gtz p4, :cond_2

    const/16 v0, 0xa

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, p4

    .line 44
    :goto_1
    new-instance v9, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v6, p1

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;ILjava/lang/String;ILcom/tgs/aics/diagnose/Result;Ljava/lang/String;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    move-object v0, p5

    invoke-virtual {p5, v9}, Lcom/tgs/aics/diagnose/DiagnoseManager;->execute(Ljava/lang/Runnable;)Z

    return-void

    .line 38
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fail start traceroute while route invalid."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    const-string v0, "Route invalid."

    .line 39
    invoke-virtual {v5, v0}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-direct {p0, v0, v1}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->notifyTracerouteDiagnoseFinish(Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    return-void
.end method

.method public stopTrace()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->mCanceled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->mCanceled:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
