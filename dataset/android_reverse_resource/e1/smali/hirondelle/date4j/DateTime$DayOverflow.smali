.class public final enum Lhirondelle/date4j/DateTime$DayOverflow;
.super Ljava/lang/Enum;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhirondelle/date4j/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DayOverflow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhirondelle/date4j/DateTime$DayOverflow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhirondelle/date4j/DateTime$DayOverflow;

.field public static final enum Abort:Lhirondelle/date4j/DateTime$DayOverflow;

.field public static final enum FirstDay:Lhirondelle/date4j/DateTime$DayOverflow;

.field public static final enum LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

.field public static final enum Spillover:Lhirondelle/date4j/DateTime$DayOverflow;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    new-instance v0, Lhirondelle/date4j/DateTime$DayOverflow;

    const-string v1, "LastDay"

    invoke-direct {v0, v1, v2}, Lhirondelle/date4j/DateTime$DayOverflow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    .line 357
    new-instance v0, Lhirondelle/date4j/DateTime$DayOverflow;

    const-string v1, "FirstDay"

    invoke-direct {v0, v1, v3}, Lhirondelle/date4j/DateTime$DayOverflow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhirondelle/date4j/DateTime$DayOverflow;->FirstDay:Lhirondelle/date4j/DateTime$DayOverflow;

    .line 359
    new-instance v0, Lhirondelle/date4j/DateTime$DayOverflow;

    const-string v1, "Spillover"

    invoke-direct {v0, v1, v4}, Lhirondelle/date4j/DateTime$DayOverflow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhirondelle/date4j/DateTime$DayOverflow;->Spillover:Lhirondelle/date4j/DateTime$DayOverflow;

    .line 361
    new-instance v0, Lhirondelle/date4j/DateTime$DayOverflow;

    const-string v1, "Abort"

    invoke-direct {v0, v1, v5}, Lhirondelle/date4j/DateTime$DayOverflow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhirondelle/date4j/DateTime$DayOverflow;->Abort:Lhirondelle/date4j/DateTime$DayOverflow;

    .line 353
    const/4 v0, 0x4

    new-array v0, v0, [Lhirondelle/date4j/DateTime$DayOverflow;

    sget-object v1, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    aput-object v1, v0, v2

    sget-object v1, Lhirondelle/date4j/DateTime$DayOverflow;->FirstDay:Lhirondelle/date4j/DateTime$DayOverflow;

    aput-object v1, v0, v3

    sget-object v1, Lhirondelle/date4j/DateTime$DayOverflow;->Spillover:Lhirondelle/date4j/DateTime$DayOverflow;

    aput-object v1, v0, v4

    sget-object v1, Lhirondelle/date4j/DateTime$DayOverflow;->Abort:Lhirondelle/date4j/DateTime$DayOverflow;

    aput-object v1, v0, v5

    sput-object v0, Lhirondelle/date4j/DateTime$DayOverflow;->$VALUES:[Lhirondelle/date4j/DateTime$DayOverflow;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhirondelle/date4j/DateTime$DayOverflow;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 353
    const-class v0, Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhirondelle/date4j/DateTime$DayOverflow;

    return-object v0
.end method

.method public static values()[Lhirondelle/date4j/DateTime$DayOverflow;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lhirondelle/date4j/DateTime$DayOverflow;->$VALUES:[Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-virtual {v0}, [Lhirondelle/date4j/DateTime$DayOverflow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhirondelle/date4j/DateTime$DayOverflow;

    return-object v0
.end method
