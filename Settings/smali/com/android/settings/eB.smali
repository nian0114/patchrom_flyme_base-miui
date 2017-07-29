.class Lcom/android/settings/eB;
.super Ljava/lang/Object;
.source "MiuiLocaleSettings.java"


# instance fields
.field displayName:Ljava/lang/String;

.field final synthetic rn:Lcom/android/settings/MiuiLocaleSettings;

.field ro:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/settings/MiuiLocaleSettings;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/eB;->rn:Lcom/android/settings/MiuiLocaleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MiuiLocaleSettings;Lcom/android/settings/ex;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/settings/eB;-><init>(Lcom/android/settings/MiuiLocaleSettings;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/eB;->displayName:Ljava/lang/String;

    return-object v0
.end method
