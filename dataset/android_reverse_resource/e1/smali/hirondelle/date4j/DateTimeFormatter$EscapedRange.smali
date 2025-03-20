.class final Lhirondelle/date4j/DateTimeFormatter$EscapedRange;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhirondelle/date4j/DateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EscapedRange"
.end annotation


# instance fields
.field End:I

.field Start:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhirondelle/date4j/DateTimeFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lhirondelle/date4j/DateTimeFormatter$1;

    .prologue
    .line 136
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeFormatter$EscapedRange;-><init>()V

    return-void
.end method
