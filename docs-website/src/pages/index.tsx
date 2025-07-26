import type {ReactNode} from 'react';
import clsx from 'clsx';
import Link from '@docusaurus/Link';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import Layout from '@theme/Layout';
import HomepageFeatures from '@site/src/components/HomepageFeatures';
import Heading from '@theme/Heading';

import styles from './index.module.css';

function HomepageHeader() {
  const {siteConfig} = useDocusaurusContext();
  return (
    <header className={clsx('hero hero--primary', styles.heroBanner)}>
      <div className="container">
        <Heading as="h1" className="hero__title">
          {siteConfig.title}
        </Heading>
        <p className="hero__subtitle">{siteConfig.tagline}</p>
        <div className={styles.buttons}>
          <Link
            className="button button--secondary button--lg"
            to="/docs/intro">
            Get Started - 5min ⏱️
          </Link>
          <Link
            className="button button--primary button--lg margin-left--md"
            to="/docs/quick-start/installation">
            Quick Start Guide
          </Link>
        </div>
        <div className={styles.features}>
          <div className={styles.feature}>
            <span className="mmp-badge mpp-badge--photo">Photos</span>
            <span>EXIF + GPS + AI Enhancement</span>
          </div>
          <div className={styles.feature}>
            <span className="mmp-badge mpp-badge--video">Videos</span>
            <span>Metadata + Location + Analysis</span>
          </div>
          <div className={styles.feature}>
            <span className="mmp-badge mpp-badge--gps">GPS</span>
            <span>Recreation.gov + GNIS + Landmarks</span>
          </div>
          <div className={styles.feature}>
            <span className="mmp-badge mpp-badge--metadata">Heritage</span>
            <span>Family Collections + Archives</span>
          </div>
        </div>
      </div>
    </header>
  );
}

export default function Home(): ReactNode {
  const {siteConfig} = useDocusaurusContext();
  return (
    <Layout
      title={`${siteConfig.title} - Professional Media Processing`}
      description="Comprehensive photo and video metadata enrichment platform with GPS, landmarks, and heritage photo processing">
      <HomepageHeader />
      <main>
        <HomepageFeatures />
      </main>
    </Layout>
  );
}
