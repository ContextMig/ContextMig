.class public Lorg/mozilla/telemetry/measurement/TimezoneOffsetMeasurement;
.super Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
.source "TimezoneOffsetMeasurement.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "tz"

    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method private static getTimezoneOffsetInMinutesForGivenDate(Ljava/util/Calendar;)I
    .locals 4
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public flush()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lorg/mozilla/telemetry/measurement/TimezoneOffsetMeasurement;->now()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/telemetry/measurement/TimezoneOffsetMeasurement;->getTimezoneOffsetInMinutesForGivenDate(Ljava/util/Calendar;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method now()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
