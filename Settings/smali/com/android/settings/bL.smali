.class public Lcom/android/settings_ex/bL;
.super Lcom/android/settings_ex/bN;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1618
    const v0, 0x7f0c08d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bN;-><init>(Ljava/lang/CharSequence;)V

    .line 1619
    return-void
.end method
