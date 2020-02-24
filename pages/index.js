import Head from "next/head";
import React from "react";
import styles from "./index.module.css";

const Home = () => (
  <div className={styles.container}>
    <Head>
      <title>Create Next App</title>
      <link rel="icon" href="/favicon.ico" />
    </Head>
    <nav>
      <ul>
        <li>Home</li>
      </ul>
    </nav>
    <main>
      <h1 className={styles.title}>Welcome to Docker CI - CD? huh</h1>
    </main>
  </div>
);

export default Home;
