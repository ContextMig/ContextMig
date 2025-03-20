.class public final enum Lcom/dropbox/sync/android/DbxFields$ValueType;
.super Ljava/lang/Enum;
.source "DbxFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxFields$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxFields$ValueType;

.field public static final enum BOOLEAN:Lcom/dropbox/sync/android/DbxFields$ValueType;

.field public static final enum BYTES:Lcom/dropbox/sync/android/DbxFields$ValueType;

.field public static final enum DATE:Lcom/dropbox/sync/android/DbxFields$ValueType;

.field public static final enum DOUBLE:Lcom/dropbox/sync/android/DbxFields$ValueType;

.field public static final enum LIST:Lcom/dropbox/sync/android/DbxFields$ValueType;

.field public static final enum LONG:Lcom/dropbox/sync/android/DbxFields$ValueType;

.field public static final enum STRING:Lcom/dropbox/sync/android/DbxFields$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    new-instance v0, Lcom/dropbox/sync/android/DbxFields$ValueType;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/sync/android/DbxFields$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->BOOLEAN:Lcom/dropbox/sync/android/DbxFields$ValueType;

    .line 104
    new-instance v0, Lcom/dropbox/sync/android/DbxFields$ValueType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/sync/android/DbxFields$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->LONG:Lcom/dropbox/sync/android/DbxFields$ValueType;

    .line 109
    new-instance v0, Lcom/dropbox/sync/android/DbxFields$ValueType;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/sync/android/DbxFields$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->DOUBLE:Lcom/dropbox/sync/android/DbxFields$ValueType;

    .line 115
    new-instance v0, Lcom/dropbox/sync/android/DbxFields$ValueType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/sync/android/DbxFields$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->STRING:Lcom/dropbox/sync/android/DbxFields$ValueType;

    .line 121
    new-instance v0, Lcom/dropbox/sync/android/DbxFields$ValueType;

    const-string v1, "BYTES"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/sync/android/DbxFields$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->BYTES:Lcom/dropbox/sync/android/DbxFields$ValueType;

    .line 126
    new-instance v0, Lcom/dropbox/sync/android/DbxFields$ValueType;

    const-string v1, "DATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxFields$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->DATE:Lcom/dropbox/sync/android/DbxFields$ValueType;

    .line 134
    new-instance v0, Lcom/dropbox/sync/android/DbxFields$ValueType;

    const-string v1, "LIST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxFields$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->LIST:Lcom/dropbox/sync/android/DbxFields$ValueType;

    .line 89
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxFields$ValueType;

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$ValueType;->BOOLEAN:Lcom/dropbox/sync/android/DbxFields$ValueType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$ValueType;->LONG:Lcom/dropbox/sync/android/DbxFields$ValueType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$ValueType;->DOUBLE:Lcom/dropbox/sync/android/DbxFields$ValueType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$ValueType;->STRING:Lcom/dropbox/sync/android/DbxFields$ValueType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$ValueType;->BYTES:Lcom/dropbox/sync/android/DbxFields$ValueType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/sync/android/DbxFields$ValueType;->DATE:Lcom/dropbox/sync/android/DbxFields$ValueType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/sync/android/DbxFields$ValueType;->LIST:Lcom/dropbox/sync/android/DbxFields$ValueType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->$VALUES:[Lcom/dropbox/sync/android/DbxFields$ValueType;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFields$ValueType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v0, Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxFields$ValueType;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxFields$ValueType;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->$VALUES:[Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxFields$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxFields$ValueType;

    return-object v0
.end method
