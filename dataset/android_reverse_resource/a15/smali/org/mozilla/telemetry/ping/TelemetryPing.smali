.class public Lorg/mozilla/telemetry/ping/TelemetryPing;
.super Ljava/lang/Object;
.source "TelemetryPing.java"


# instance fields
.field private final documentId:Ljava/lang/String;

.field private final measurementResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;

.field private final uploadPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "documentId"    # Ljava/lang/String;
    .param p3, "uploadPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p4, "measurementResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/mozilla/telemetry/ping/TelemetryPing;->type:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lorg/mozilla/telemetry/ping/TelemetryPing;->documentId:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lorg/mozilla/telemetry/ping/TelemetryPing;->uploadPath:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lorg/mozilla/telemetry/ping/TelemetryPing;->measurementResults:Ljava/util/Map;

    .line 20
    return-void
.end method


# virtual methods
.method public getDocumentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryPing;->documentId:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasurementResults()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryPing;->measurementResults:Ljava/util/Map;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryPing;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryPing;->uploadPath:Ljava/lang/String;

    return-object v0
.end method
