.class public abstract Lorg/joda/time/base/BaseSingleFieldPeriod;
.super Ljava/lang/Object;
.source "BaseSingleFieldPeriod.java"

# interfaces
.implements Lorg/joda/time/ReadablePeriod;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/joda/time/ReadablePeriod;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/joda/time/base/BaseSingleFieldPeriod;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8898d4e461cL


# instance fields
.field private volatile iPeriod:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p1, p0, Lorg/joda/time/base/BaseSingleFieldPeriod;->iPeriod:I

    .line 157
    return-void
.end method

.method protected static between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I
    .locals 6

    .prologue
    .line 66
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReadableInstant objects must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    invoke-static {p0}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 70
    invoke-virtual {p2, v0}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v2

    invoke-interface {p0}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result v0

    .line 71
    return v0
.end method

.method protected static between(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePeriod;)I
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 88
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReadablePartial objects must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v0

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReadablePartial objects must have the same set of fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    move v0, v6

    :goto_0
    if-ge v0, v1, :cond_4

    .line 95
    invoke-interface {p0, v0}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReadablePartial objects must have the same set of fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_4
    invoke-static {p0}, Lorg/joda/time/DateTimeUtils;->isContiguous(Lorg/joda/time/ReadablePartial;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReadablePartial objects must be contiguous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_5
    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p0, v4, v5}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v2

    invoke-virtual {v0, p1, v4, v5}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v4

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object v0

    .line 104
    aget v0, v0, v6

    return v0
.end method

.method protected static standardPeriodIn(Lorg/joda/time/ReadablePeriod;J)I
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 128
    if-nez p0, :cond_0

    .line 145
    :goto_0
    return v0

    .line 131
    :cond_0
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v1

    .line 132
    const-wide/16 v2, 0x0

    .line 133
    :goto_1
    invoke-interface {p0}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 134
    invoke-interface {p0, v0}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v4

    .line 135
    if-eqz v4, :cond_2

    .line 136
    invoke-interface {p0, v0}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v5

    .line 137
    invoke-virtual {v5}, Lorg/joda/time/DurationField;->isPrecise()Z

    move-result v6

    if-nez v6, :cond_1

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert period to duration as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lorg/joda/time/DurationField;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not precise in the period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    invoke-virtual {v5}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v6

    invoke-static {v6, v7, v4}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v2

    .line 133
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_3
    div-long v0, v2, p1

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 46
    check-cast p1, Lorg/joda/time/base/BaseSingleFieldPeriod;

    invoke-virtual {p0, p1}, Lorg/joda/time/base/BaseSingleFieldPeriod;->compareTo(Lorg/joda/time/base/BaseSingleFieldPeriod;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/joda/time/base/BaseSingleFieldPeriod;)I
    .locals 3

    .prologue
    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 331
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be compared to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getValue()I

    move-result v0

    .line 334
    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getValue()I

    move-result v1

    .line 335
    if-le v1, v0, :cond_1

    .line 336
    const/4 v0, 0x1

    .line 341
    :goto_0
    return v0

    .line 338
    :cond_1
    if-ge v1, v0, :cond_2

    .line 339
    const/4 v0, -0x1

    goto :goto_0

    .line 341
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 299
    if-ne p0, p1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 302
    :cond_1
    instance-of v2, p1, Lorg/joda/time/ReadablePeriod;

    if-nez v2, :cond_2

    move v0, v1

    .line 303
    goto :goto_0

    .line 305
    :cond_2
    check-cast p1, Lorg/joda/time/ReadablePeriod;

    .line 306
    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v3

    if-ne v2, v3, :cond_3

    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public get(Lorg/joda/time/DurationFieldType;)I
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getFieldType()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getValue()I

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getFieldType()Lorg/joda/time/DurationFieldType;
.end method

.method public getFieldType(I)Lorg/joda/time/DurationFieldType;
    .locals 2

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getFieldType()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPeriodType()Lorg/joda/time/PeriodType;
.end method

.method protected getValue()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lorg/joda/time/base/BaseSingleFieldPeriod;->iPeriod:I

    return v0
.end method

.method public getValue(I)I
    .locals 2

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getValue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 315
    .line 316
    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getValue()I

    move-result v0

    add-int/lit16 v0, v0, 0x1cb

    .line 317
    mul-int/lit8 v0, v0, 0x1b

    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getFieldType()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    return v0
.end method

.method public isSupported(Lorg/joda/time/DurationFieldType;)Z
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getFieldType()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setValue(I)V
    .locals 0

    .prologue
    .line 176
    iput p1, p0, Lorg/joda/time/base/BaseSingleFieldPeriod;->iPeriod:I

    .line 177
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public toMutablePeriod()Lorg/joda/time/MutablePeriod;
    .locals 1

    .prologue
    .line 283
    new-instance v0, Lorg/joda/time/MutablePeriod;

    invoke-direct {v0}, Lorg/joda/time/MutablePeriod;-><init>()V

    .line 284
    invoke-virtual {v0, p0}, Lorg/joda/time/MutablePeriod;->add(Lorg/joda/time/ReadablePeriod;)V

    .line 285
    return-object v0
.end method

.method public toPeriod()Lorg/joda/time/Period;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lorg/joda/time/Period;->ZERO:Lorg/joda/time/Period;

    invoke-virtual {v0, p0}, Lorg/joda/time/Period;->withFields(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Period;

    move-result-object v0

    return-object v0
.end method
