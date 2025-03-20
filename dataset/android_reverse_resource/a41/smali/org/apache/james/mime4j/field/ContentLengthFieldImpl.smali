.class public Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentLengthFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentLengthField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<",
            "Lorg/apache/james/mime4j/dom/field/ContentLengthField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentLength:J

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1
    .param p1, "rawField"    # Lorg/apache/james/mime4j/stream/Field;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->parsed:Z

    .line 37
    return-void
.end method

.method private parse()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 40
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->parsed:Z

    .line 41
    iput-wide v4, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->contentLength:J

    .line 42
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "body":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->contentLength:J

    .line 46
    iget-wide v2, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->contentLength:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 47
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->contentLength:J

    .line 48
    iget-object v2, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->isListening()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ignoring Content-Length header"

    invoke-virtual {v2, v3, v4}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->isListening()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ignoring Content-Length header"

    invoke-virtual {v2, v3, v4}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->parse()V

    .line 66
    :cond_0
    iget-wide v0, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->contentLength:J

    return-wide v0
.end method
