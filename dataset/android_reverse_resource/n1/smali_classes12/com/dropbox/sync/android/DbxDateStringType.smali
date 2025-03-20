.class final enum Lcom/dropbox/sync/android/DbxDateStringType;
.super Ljava/lang/Enum;
.source "DbxDateStringType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxDateStringType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxDateStringType;

.field public static final enum DATE:Lcom/dropbox/sync/android/DbxDateStringType;

.field public static final enum DATE_HOUR:Lcom/dropbox/sync/android/DbxDateStringType;

.field public static final enum DATE_YEAR:Lcom/dropbox/sync/android/DbxDateStringType;

.field public static final enum DATE_YEAR_HOUR:Lcom/dropbox/sync/android/DbxDateStringType;

.field public static final enum HOUR:Lcom/dropbox/sync/android/DbxDateStringType;

.field public static final enum LONG_WEEKDAY:Lcom/dropbox/sync/android/DbxDateStringType;

.field public static final enum LONG_WEEKDAY_DATE:Lcom/dropbox/sync/android/DbxDateStringType;

.field public static final enum LONG_WEEKDAY_FULL_DATE:Lcom/dropbox/sync/android/DbxDateStringType;

.field public static final enum SHORT_FULL_DATE:Lcom/dropbox/sync/android/DbxDateStringType;

.field public static final enum SHORT_WEEKDAY_HOUR:Lcom/dropbox/sync/android/DbxDateStringType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/dropbox/sync/android/DbxDateStringType;

    const-string v1, "HOUR"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/sync/android/DbxDateStringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxDateStringType;->HOUR:Lcom/dropbox/sync/android/DbxDateStringType;

    .line 16
    new-instance v0, Lcom/dropbox/sync/android/DbxDateStringType;

    const-string v1, "LONG_WEEKDAY"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/sync/android/DbxDateStringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxDateStringType;->LONG_WEEKDAY:Lcom/dropbox/sync/android/DbxDateStringType;

    .line 18
    new-instance v0, Lcom/dropbox/sync/android/DbxDateStringType;

    const-string v1, "SHORT_WEEKDAY_HOUR"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/sync/android/DbxDateStringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxDateStringType;->SHORT_WEEKDAY_HOUR:Lcom/dropbox/sync/android/DbxDateStringType;

    .line 20
    new-instance v0, Lcom/dropbox/sync/android/DbxDateStringType;

    const-string v1, "LONG_WEEKDAY_DATE"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/sync/android/DbxDateStringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxDateStringType;->LONG_WEEKDAY_DATE:Lcom/dropbox/sync/android/DbxDateStringType;

    .line 22
    new-instance v0, Lcom/dropbox/sync/android/DbxDateStringType;

    const-string v1, "DATE"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/sync/android/DbxDateStringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxDateStringType;->DATE:Lcom/dropbox/sync/android/DbxDateStringType;

    .line 24
    new-instance v0, Lcom/dropbox/sync/android/DbxDateStringType;

    const-string v1, "DATE_YEAR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxDateStringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxDateStringType;->DATE_YEAR:Lcom/dropbox/sync/android/DbxDateStringType;

    .line 26
    new-instance v0, Lcom/dropbox/sync/android/DbxDateStringType;

    const-string v1, "DATE_HOUR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxDateStringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxDateStringType;->DATE_HOUR:Lcom/dropbox/sync/android/DbxDateStringType;

    .line 28
    new-instance v0, Lcom/dropbox/sync/android/DbxDateStringType;

    const-string v1, "LONG_WEEKDAY_FULL_DATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxDateStringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxDateStringType;->LONG_WEEKDAY_FULL_DATE:Lcom/dropbox/sync/android/DbxDateStringType;

    .line 30
    new-instance v0, Lcom/dropbox/sync/android/DbxDateStringType;

    const-string v1, "SHORT_FULL_DATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxDateStringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxDateStringType;->SHORT_FULL_DATE:Lcom/dropbox/sync/android/DbxDateStringType;

    .line 36
    new-instance v0, Lcom/dropbox/sync/android/DbxDateStringType;

    const-string v1, "DATE_YEAR_HOUR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxDateStringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxDateStringType;->DATE_YEAR_HOUR:Lcom/dropbox/sync/android/DbxDateStringType;

    .line 12
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxDateStringType;

    sget-object v1, Lcom/dropbox/sync/android/DbxDateStringType;->HOUR:Lcom/dropbox/sync/android/DbxDateStringType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/sync/android/DbxDateStringType;->LONG_WEEKDAY:Lcom/dropbox/sync/android/DbxDateStringType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/sync/android/DbxDateStringType;->SHORT_WEEKDAY_HOUR:Lcom/dropbox/sync/android/DbxDateStringType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/sync/android/DbxDateStringType;->LONG_WEEKDAY_DATE:Lcom/dropbox/sync/android/DbxDateStringType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/sync/android/DbxDateStringType;->DATE:Lcom/dropbox/sync/android/DbxDateStringType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/sync/android/DbxDateStringType;->DATE_YEAR:Lcom/dropbox/sync/android/DbxDateStringType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/sync/android/DbxDateStringType;->DATE_HOUR:Lcom/dropbox/sync/android/DbxDateStringType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/sync/android/DbxDateStringType;->LONG_WEEKDAY_FULL_DATE:Lcom/dropbox/sync/android/DbxDateStringType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dropbox/sync/android/DbxDateStringType;->SHORT_FULL_DATE:Lcom/dropbox/sync/android/DbxDateStringType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dropbox/sync/android/DbxDateStringType;->DATE_YEAR_HOUR:Lcom/dropbox/sync/android/DbxDateStringType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/sync/android/DbxDateStringType;->$VALUES:[Lcom/dropbox/sync/android/DbxDateStringType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxDateStringType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/dropbox/sync/android/DbxDateStringType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxDateStringType;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxDateStringType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dropbox/sync/android/DbxDateStringType;->$VALUES:[Lcom/dropbox/sync/android/DbxDateStringType;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxDateStringType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxDateStringType;

    return-object v0
.end method
