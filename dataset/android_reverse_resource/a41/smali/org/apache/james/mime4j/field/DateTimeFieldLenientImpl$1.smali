.class final Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl$1;
.super Ljava/lang/Object;
.source "DateTimeFieldLenientImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/james/mime4j/dom/FieldParser",
        "<",
        "Lorg/apache/james/mime4j/dom/field/DateTimeField;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/DateTimeField;
    .locals 2
    .param p1, "rawField"    # Lorg/apache/james/mime4j/stream/Field;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 88
    new-instance v0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl$1;)V

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl$1;->parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/DateTimeField;

    move-result-object v0

    return-object v0
.end method
