.class public Lorg/apache/james/mime4j/codec/DecodeMonitor;
.super Ljava/lang/Object;
.source "DecodeMonitor.java"


# static fields
.field public static final SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field public static final STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/apache/james/mime4j/codec/DecodeMonitor$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/DecodeMonitor$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 53
    new-instance v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/DecodeMonitor;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isListening()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "dropDesc"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
