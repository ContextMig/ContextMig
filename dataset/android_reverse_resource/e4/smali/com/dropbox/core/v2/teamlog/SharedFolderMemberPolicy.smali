.class public final enum Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;
.super Ljava/lang/Enum;
.source "SharedFolderMemberPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

.field public static final enum ANYONE:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

.field public static final enum TEAM_ONLY:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    const-string/jumbo v1, "TEAM_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;->TEAM_ONLY:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    .line 24
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    const-string/jumbo v1, "ANYONE"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;->ANYONE:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;->TEAM_ONLY:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;->ANYONE:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;->$VALUES:[Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;->$VALUES:[Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    return-object v0
.end method
