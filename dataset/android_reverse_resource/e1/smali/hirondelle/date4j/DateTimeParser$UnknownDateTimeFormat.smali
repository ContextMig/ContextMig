.class final Lhirondelle/date4j/DateTimeParser$UnknownDateTimeFormat;
.super Ljava/lang/RuntimeException;
.source "DateTimeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhirondelle/date4j/DateTimeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnknownDateTimeFormat"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x63a26de049887418L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "aMessage"    # Ljava/lang/String;
    .param p2, "aEx"    # Ljava/lang/Throwable;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
